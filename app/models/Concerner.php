<?php

class Concerner extends \Phalcon\Mvc\Model
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
    public $iD_VENTE;

    /**
     *
     * @var string
     */
    public $qUANTITE_VENDUE;

    /**
     *
     * @var double
     */
    public $pRIX_UNITAIRE_VENDUE;

    /**
     * Initialize method for model.
     */
    public function initialize()
    {
        $this->setSchema("stocketvente");
        $this->setSource("concerner");
        $this->belongsTo('iD_PRODUIT', '\Produits', 'iD_PRODUIT', ['alias' => 'Produits']);
        $this->belongsTo('iD_VENTE', '\Ventes', 'iD_VENTE', ['alias' => 'Ventes']);
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return Concerner[]|Concerner|\Phalcon\Mvc\Model\ResultSetInterface
     */
    public static function find($parameters = null): \Phalcon\Mvc\Model\ResultsetInterface
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return Concerner|\Phalcon\Mvc\Model\ResultInterface|\Phalcon\Mvc\ModelInterface|null
     */
    public static function findFirst($parameters = null): ?\Phalcon\Mvc\ModelInterface
    {
        return parent::findFirst($parameters);
    }

}
