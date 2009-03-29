<?php

	/* SCRIPT d'export des capacites en PDF
	*  Sébastien TACK
	*  MARS 2009	
	*/

	require('../lib/fpdf/fpdf.php');
	require('../models/models.php');

	class MrTPDF extends FPDF 	{
		function PDF($orientation='P',$unit='mm',$format='A4') 	{
    			//Appel au constructeur parent
    			$this->FPDF($orientation,$unit,$format);
		}

		public function addCapa($idCAP) {
			$capa = new Capacites();
			$R = $capa->give_capa_by_id($idCAP);
			
			//$this->SetDrawColor(0,0,0);
			$this->SetTextColor(0,0,0);
			//adapter en fonction de la categorie
			if ( trim($R[0]->id_contenu) == '1' ) {
				$this->SetFillColor(255,255,0);
				$this->SetDrawColor(255,255,0);
			}	

			if ( trim($R[0]->id_contenu) == '2' ) {
				$this->SetFillColor(125,255,125);
				$this->SetDrawColor(125,255,125);
			}	
			if ( trim($R[0]->id_contenu) == '3' ) {
				$this->SetFillColor(255,128,64);
				$this->SetDrawColor(255,128,64);
			}	
			if ( trim($R[0]->id_contenu) == '4' ) {
				$this->SetFillColor(128,128,255);
				$this->SetDrawColor(128,128,255);
			}	
			if ( trim($R[0]->id_contenu) == '5' ) {
				$this->SetFillColor(255,0,255);
				$this->SetDrawColor(255,0,255);
			}
			if ( trim($R[0]->id_contenu) == '6' ) {
				$this->SetFillColor(192,192,192);
				$this->SetDrawColor(192,192,192);
			}	
	

			//recuperer dans la DB
			$texte = html_entity_decode($R[0]->capacite."(".$R[0]->niveau.")");
			$texte = str_replace('&apos;',"'",$texte);
			$this->SetFont('Arial','B',12);
			$this->MultiCell(190,6,$texte,1,1,'C',true);
			$this->SetTextColor(0,0,255);
			$this->SetFont('Arial','',9);
			$texte = html_entity_decode($R[0]->connaissance);
			$texte = str_replace('&apos;',"'",$texte);
			$this->MultiCell(190,6,$texte,1,1,'C',true);
			$this->Ln();

		}


	}

	//die(print_r($_REQUEST['liste']));


	if ($_REQUEST && $_REQUEST['lst']) {
		$liste = $_REQUEST['lst'];
		$liste = str_replace('liste:','',$liste);
		$liste = explode(':',$liste);
		//die(print_r($liste));
	} 


	if ($_REQUEST && $_REQUEST['lst'] == 'ALL') {
		
		for ($x=1;$x<172;$x++) {
			$listeFrame .= $x.':';
		}	
		$liste = explode(':',$listeFrame);
        }
	//else
	//	$liste = array('8','18','23','26','30','43');		
	


	$w = 300;
	$titre = "TEST";
	$pdf=new MrTPDF('P','mm','A4');
	$pdf->AddPage();	
	$pdf->SetFont('Arial','',12);
	foreach($liste as $elem) {
		if (is_numeric($elem))
			$pdf->addCapa($elem);	
	} 	

	/*
	$pdf->addCapa(8);	
	$pdf->addCapa(18);	
	$pdf->addCapa(23);	
	$pdf->addCapa(26);	
	$pdf->addCapa(30);	
	$pdf->addCapa(43);
	*/	
	$pdf->Output();
	echo("Fini :)"); 
?>
