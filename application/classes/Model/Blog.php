<?php
class Model_Blog extends Model
{
    public function getAllNickName()
    {
        return DB::select('nickname')->from('comments')->execute();
    }
}