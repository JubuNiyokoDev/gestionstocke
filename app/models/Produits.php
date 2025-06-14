<?php

class Produits extends \Phalcon\Mvc\Model
{

    /**
     *
     * @var integer
     */
    public $iD_PRODUIT;

    /**
     *
     * @var integer
     */
    public $iD_CATEGORIE;

    /**
     *
     * @var string
     */
    public $nOM_PRODUIT;

    /**
     * Initialize method for model.
     */
    public function initialize()
    {
        $this->setSchema("stocketvente");
        $this->setSource("produits");
        $this->hasMany('iD_PRODUIT', 'Approvisionnements', 'iD_PRODUIT', ['alias' => 'Approvisionnements']);
        $this->hasMany('iD_PRODUIT', 'Concerner', 'iD_PRODUIT', ['alias' => 'Concerner']);
        $this->hasMany('iD_PRODUIT', 'Stocks', 'iD_PRODUIT', ['alias' => 'Stocks']);
        $this->belongsTo('iD_CATEGORIE', '\Categories', 'iD_CATEGORIE', ['alias' => 'Categories']);
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return Produits[]|Produits|\Phalcon\Mvc\Model\ResultSetInterface
     */
    public static function find($parameters = null): \Phalcon\Mvc\Model\ResultsetInterface
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return Produits|\Phalcon\Mvc\Model\ResultInterface|\Phalcon\Mvc\ModelInterface|null
     */
    public static function findFirst($parameters = null): ?\Phalcon\Mvc\ModelInterface
    {
        return parent::findFirst($parameters);
    }

}
