<?php

namespace App\Admin\Extensions;

use Encore\Admin\Grid\Exporters\AbstractExporter;
use League\Csv\CannotInsertRecord;
use League\Csv\Writer;

class HighPerformanceCsvExporter extends AbstractExporter
{
    protected $fields;
    protected $validFields;

    public function __construct($fields = [])
    {
        parent::__construct();
        $this->fields = $fields;
        ini_set('memory_limit', '2048M');
        ini_set('max_execution_time', 3600);
    }

    public function export()
    {
        $filename = $this->getTable();
        $rows = collect($this->getData());
        $rows->transform(function ($datum) {
            $item = $datum;
            if (!empty($this->fields)) $item = array_only($datum, array_keys($this->fields));
            if (array_has($datum, 'json')) {
                //包含json字段时,恢复附属字段
                $json = json_decode($datum['json'], true);
                $item += $json;
            }
            return $item;
        });

        $csv = Writer::createFromFileObject(new \SplTempFileObject());
        $csv->insertOne(array_keys($rows->first()));
        $csv->insertAll($rows);
        $csv->output("{$filename}.csv");
        fastcgi_finish_request();
    }
}