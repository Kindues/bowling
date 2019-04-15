<?php

class Connection
{
    public static function make($config)
    {
        try {
            return new PDO(
                $config['connection'] . ';dbname=' . $config['name'],
                $config['username'], 
                $config['pass'],
                $config['options']
            );

        } catch (PDOException $e) {
            echo('Could not connect');
        }
    }
}