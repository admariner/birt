#Properties file for org.eclipse.birt.core.script.bre
Bundle-Name.0 = Plug-in de la fonction

dataType.String=Cha�ne

dataType.Any=Indiff�rent

dataType.DateTime=DateTime
dataType.Integer=Entier

dataType.Double=Double

dataType.Number=Num�ro

dataType.Boolean=Bool�en

dataType.DoubleArray=Double[]

FunctionDesc.charLength=Renvoie le nombre de caract�res de la cha�ne.

FunctionDesc.concat=Renvoie la cha�ne concat�n�e par toutes les cha�nes donn�es.

FunctionDesc.indexOf=Recherche la cible dans la source de la cha�ne et revoie l'index de la premi�re occurrence de correspondance. \nLa recherche commence au d�but de l'emplacement. Toutes les valeurs d'index ont 0 comme base.\nSi le d�but est omis, une valeur de 0 est appliqu�e. \nLa cha�ne de recherche est sensible � la casse.

FunctionDesc.left=Renvoie les n premiers caract�res de la cha�ne ch. \nSi n correspond � la valeur 0, une cha�ne vide est renvoy�e. \nSi n est sup�rieur � la longueur de ch, toute la cha�ne est renvoy�e. \nSi n est omis, une valeur de 1 est utilis�e.

FunctionDesc.right=Renvoie les n derniers caract�res de la cha�ne ch. \nSi n a la valeur 0, une cha�ne vide est renvoy�e. Si n est sup�rieur � la longueur de ch, toute la cha�ne est renvoy�e. \nSi n est omis, une valeur de 1 est utilis�e.

FunctionDesc.search=Similaire � la fonction indexOf, sauf que : \n(1) la comparaison de cha�nes est sensible � la casse \n(2) la cha�ne de correspondance peut contenir des caract�res g�n�riques : \n* correspond � n'importe quelle s�quence de caract�res (y compris un caract�re vide); \n? correspond � n'importe quel caract�re unique.

FunctionDesc.toLower=Convertit tous les caract�res de la source de la cha�ne en minuscules.

FunctionDesc.toUpper=Convertit tous les caract�res de la source de la cha�ne en majuscules.

FunctionDesc.trim=Supprime tous les caract�res d'espace de d�but et de fin (espace, tabulation, etc.).\nEn outre, tous les caract�res d'espace cons�cutifs sont fusionn�s en un seul caract�re.

FunctionDesc.trimLeft=Supprime tous les espaces de d�but. Les espaces de fin et les espaces entre les mots ne sont pas supprim�s.

FunctionDesc.trimRight=Supprime tous les espaces de fin. Les espaces de d�but et les espaces entre les mots ne sont pas supprim�s.

FunctionDesc.anyOf=la source se trouve dans l'intervalle cible

FunctionDesc.between=VRAI si la source se trouve entre la cible1 et la cible2. FAUX dans les autres cas

FunctionDesc.notBetween=VRAI si la source ne se trouve pas entre la cible1 et la cible2. FAUX dans les autres cas

FunctionDesc.equalTo=la source est �gale � la cible

FunctionDesc.greaterThan=la source est sup�rieure � la cible

FunctionDesc.lessThan=la source est inf�rieure � la cible

FunctionDesc.greaterOrEqual=la source est sup�rieure ou �gale � la cible

FunctionDesc.lessOrEqual=la source est inf�rieure ou �gale � la cible

FunctionDesc.notEqual=la source n'est pas �gale � la cible

FunctionDesc.like=la source correspond � la cible de correspondance SQL

FunctionDesc.notLike=la source ne correspond pas � la cible de correspondance SQL

FunctionDesc.match=la source correspond � la cible de correspondance JavaScript

FunctionDesc.compareString=comparer les deux cha�nes par rapport aux conditions sp�cifi�es

FunctionDesc.add=Somme des deux nombres n1 et n2.

FunctionDesc.substract=n1 auquel on soustrait n2

FunctionDesc.multiple=Multiplie n1 par n2. Cette fonction est utilis�e uniquement pour la compatibilit� descendante de la fonction "multiply".

FunctionDesc.multiply=Multiplie n1 par n2

FunctionDesc.divide=le dividende est divis� par le diviseur

FunctionDesc.round=Arrondit un nombre � la quantit� sp�cifi�e de chiffres. \nDec est un nombre entier et peut �tre n�gatif. \nLa valeur par d�faut pour dec est 0 lorsqu'elle est omise.

FunctionDesc.roundUp=Arrondit au nombre sup�rieur, autre que 0, � la quantit� sp�cifi�e de chiffres. \nLa valeur par d�faut pour dec est 0.

FunctionDesc.roundDown=Arrondit au nombre inf�rieur, autre que 0, � la quantit� sp�cifi�e de chiffres. \nLa valeur par d�faut pour dec est 0.

FunctionDesc.ceiling=Arrondit au nombre sup�rieur, autre que z�ro, au multiple significatif le plus proche.

FunctionDesc.mod=Reste apr�s la division du nombre par le diviseur. Le r�sultat a le m�me signe que le diviseur.

FunctionDesc.safeDivide=Renvoie le r�sultat si le r�sultat de la division du dividende par le diviseur n'est pas z�ro ou l'infini. \nDans le cas contraire, renvoie la valeur donn�e si le r�sultat est z�ro.

FunctionDesc.year=Num�ro � 4 chiffres de la valeur date/heure donn�e

FunctionDesc.quarter=Num�ro du trimestre (1 � 4) de la valeur date/heure donn�e

FunctionDesc.month=Mois de la valeur date/heure. L'option est un entier :\n1 (par d�faut) : renvoyer le num�ro de mois (1-12) ;\n2 : renvoyer le nom de mois complet selon les param�tres locaux de l'utilisateur (par ex., de janvier � d�cembre pour les param�tres locaux fran�ais) ;\n3 : renvoyer le nom de mois abr�g� selon les param�tres locaux de l'utilisateur (par ex., de janv. � d�c. pour les param�tres locaux fran�ais).

FunctionDesc.week=Num�ro de semaine de l'ann�e (de 1 � 52) de la valeur date/jeure d.

FunctionDesc.day=Num�ro de jour du mois (de 1 � 31).

FunctionDesc.weekDay=Jour de la semaine. L'option est un entier\n1 : renvoyer un num�ro entre 1 (dimanche) et 7 (samedi) ;\n2 : renvoyer un num�ro entre 1 (lundi) et 7 (dimanche) ;\n3 : renvoyer un num�ro entre 0 (lundi) et 6 (dimanche) ;\n4 : renvoyer le nom du jour de la semaine selon les param�tres locaux de l'utilisateur (par ex., dimanche � samedi pour le fran�ais) ;\n5 : renvoyer le nom du jour de la semaine abr�g� selon les param�tres locaux de l'utilisateur (par ex., dim. � sam. pour le fran�ais).

FunctionDesc.today=Renvoie une valeur d'horodatage qui correspond � minuit de la date actuelle.

FunctionDesc.now=Renvoie l'horodatage actuel.

FunctionDesc.diffYear=Renvoie une diff�rence en nombre d'ann�es.

FunctionDesc.diffMonth=Renvoie une diff�rence en nombre de mois.

FunctionDesc.diffQuarter=Renvoie une diff�rence en nombre de trimestres.

FunctionDesc.diffWeek=Renvoie une diff�rence en nombre de semaines.

FunctionDesc.diffDay=Renvoie une diff�rence en nombre de jours.

FunctionDesc.diffHour=Renvoie une diff�rence en nombre d'heures.

FunctionDesc.diffMinute=Renvoie une diff�rence en nombre de minutes.

FunctionDesc.diffSecond=Renvoie une diff�rence en nombre de secondes.

FunctionDesc.addYear=Ajouter n ann�e(s) � la date

FunctionDesc.addMonth=Ajouter n mois � la date

FunctionDesc.addQuarter=Ajouter n trimestre(s) � la date

FunctionDesc.addWeek=Ajouter n semaine(s) � la date

FunctionDesc.addDay=Ajouter n jour(s) � la date

FunctionDesc.addHour=Ajouter n heure(s) � la date

FunctionDesc.addMinute=Ajouter n minute(s) � la date

FunctionDesc.addSecond=Ajouter n seconde(s) � la date

FunctionDesc.firstDayOfYear=Renvoie le premier jour de l'ann�e correspondant � la date.

FunctionDesc.firstDayOfQuarter=Renvoie le premier jour du trimestre correspondant � la date.

FunctionDesc.firstDayOfMonth=Renvoie le premier jour du mois correspondant � la date.

FunctionDesc.firstDayOfWeek=Renvoie le premier jour de la semaine correspondant � la date.

FunctionDesc.ddb=D�pr�ciation d'un bien sur une p�riode simple donn�e en utilisant les remarques sur la m�thode d'amortissement d�gressif � taux double.

FunctionDesc.fv=Valeur future d'une annuit�, bas�e sur des remboursements p�riodiques et constants et sur un taux d'int�r�t constant.

FunctionDesc.ipmt=Paiement d'int�r�ts sur une p�riode donn�e d'une annuit�, \nbas� sur des remboursements p�riodiques et constants et sur un taux d'int�r�t constant.

FunctionDesc.irr=Taux de retour interne d'une s�rie de flux de tr�sorerie p�riodiques, de paiements et de re�us dans un tableau existant.

FunctionDesc.mirr=Taux de retour modifi� pour une s�rie de flux de tr�sorerie p�riodiques (paiements et re�us) dans un tableau existant.

FunctionDesc.nper=Nombre de p�riodes d'une annuit�, bas�e sur des paiements p�riodiques et constants et sur un taux d'int�r�t constant.

FunctionDesc.npv=Valeur actualis�e nette d'une s�rie variable de flux de tr�sorerie, positifs et n�gatifs, � un taux d'int�r�t donn�.

FunctionDesc.percent=Calcule le pourcentage des deux nombres

FunctionDesc.pmt=Remboursement pour une annuit�, bas� sur des paiements p�riodiques et constants et sur un taux d'int�r�t constant.

FunctionDesc.ppmt=Remboursement principal pour une p�riode donn�e d'une annuit�, bas� sur un taux d'int�r�t et des remboursements constants.

FunctionDesc.pv=Valeur actualis�e d'une annuit� bas�e sur des remboursements futurs p�riodiques et constants et sur un taux d'int�r�t constant.

FunctionDesc.rate=Taux d'int�r�t par p�riode pour une annuit�.

FunctionDesc.sln=D�pr�ciation lin�aire d'un bien sur une p�riode simple.

FunctionDesc.syd=D�pr�ciation d'un bien sur une p�riode donn�e en utilisant la m�thode d'amortissement d�gressif � taux fixe (m�thode sum-of-years'-digits). Remarque

FunctionDesc.addDate=Renvoie une date obtenue en ajoutant les ann�es, les mois et les jours � la date de d�but.

FunctionDesc.addTime=Renvoie une date obtenue en ajoutant les heures, les minutes et les secondes � la date de d�but.

FunctionDesc.subDate=Renvoie une date obtenue en soustrayant les ann�es, les mois et les jours de la date de d�but.

FunctionDesc.subTime=Renvoie une date obtenue en soustrayant les heures, les minutes et les secondes � la date de d�but.

FunctionDesc.days=Le nombre de jours compris entre deux dates

FunctionDesc.hours=Le nombre d'heures comprises entre deux dates

FunctionDesc.minutes=Le nombre de minutes comprises entre deux dates

FunctionDesc.months=Le nombre de mois compris entre deux dates

FunctionDesc.seconds=Le nombre de secondes comprises entre deux dates

FunctionDesc.years=Le nombre d'ann�es comprises entre deux dates

FunctionDesc.date= Renvoie un objet Date initialis� avec une ann�e, un mois, un jour, une heure, une minute et une seconde donn�s. \n(ann�e, mois, jours (donn�es obligatoires) ; heures, minutes, secondes (donn�es facultatives)

FunctionDesc.duration.year=Permet d'obtenir la valeur du champ ANNEES en tant qu'entier, * ou 0 si manquant.\nLa valeur lexicalDuration est la pr�sentation de la cha�ne de dur�e, "PnYnMnDTnHnMnS"(par ex. : P5Y2M15DT4H40M20S)

FunctionDesc.duration.month=Permet d'obtenir la valeur du champ MOIS en tant qu'entier, * ou 0 si manquant.\nLa valeur lexicalDuration est la pr�sentation de la cha�ne de dur�e, "PnYnMnDTnHnMnS"(par ex. : P5Y2M15DT4H40M20S)

FunctionDesc.duration.day=Permet d'obtenir la valeur du champ JOURS en tant qu'entier, * ou 0 si manquant.\nLa valeur lexicalDuration est la pr�sentation de la cha�ne de dur�e, "PnYnMnDTnHnMnS"(par ex. : P5Y2M15DT4H40M20S)

FunctionDesc.duration.hour=Permet d'obtenir la valeur du champ HEURES en tant qu'entier, * ou 0 si manquant.\nLa valeur lexicalDuration est la pr�sentation de la cha�ne de dur�e, "PnYnMnDTnHnMnS"(par ex. : P5Y2M15DT4H40M20S)

FunctionDesc.duration.minute=Permet d'obtenir la valeur du champ MINUTES en tant qu'entier, * ou 0 si manquant.\nLa valeur lexicalDuration est la pr�sentation de la cha�ne de dur�e, "PnYnMnDTnHnMnS"(par ex. : P5Y2M15DT4H40M20S)

FunctionDesc.duration.second=Permet d'obtenir la valeur du champ SECONDES en tant qu'entier, * ou 0 si manquant.\nLa valeur lexicalDuration est la pr�sentation de la cha�ne de dur�e, "PnYnMnDTnHnMnS"(par ex. : P5Y2M15DT4H40M20S)

FunctionDesc.duration.timeInMills=Renvoie la dur�e en millisecondes.\nLa valeur lexicalDuration est la pr�sentation de la cha�ne, "PnYnMnDTnHnMnS" (par ex. : P5Y2M15DT4H40M20S)\nL'argument startDate est utilis� pour �ter l'ambigu�t� de cet �cart.

FunctionDesc.duration.isLongerThan=Permet de v�rifier si lexicalDuration1 est strictement plus long que lexicalDuration2.\nPar exemple, "P1D" (un jour) > "PT12H" (12 heures) et "P2Y" (deux ans) > "P23M" (23 mois)

FunctionDesc.duration.isShorterThan=Permet de v�rifier si lexicalDuration1 est strictement plus court que lexicalDuration2.\nPar exemple,"PT12H" (12 heures) < "P1D" (un jour).

FunctionDesc.duration.add=Calcule une nouvelle dur�e, dont la valeur est : lexicalDuration1+lexicalDuration2.\nLa valeur lexicalDuration est la pr�sentation de la cha�ne, "PnYnMnDTnHnMnS" (par ex. P5Y2M15DT4H40M20S)

FunctionDesc.duration.substract=Calcule une nouvelle dur�e, dont la valeur est : lexicalDuration1-lexicalDuration2.\nLa valeur lexicalDuration est la pr�sentation de la cha�ne, "PnYnMnDTnHnMnS" (par ex. P5Y2M15DT4H40M20S)

FunctionDesc.duration.multiply=Calcule une nouvelle dur�e, dont la valeur est x fois plus longue que la valeur de lexicalDuration.\nLa valeur lexicalDuration est la pr�sentation de la cha�ne, "PnYnMnDTnHnMnS" (par ex. P5Y2M15DT4H40M20S)\nFactor is the times longer of new Duration to create

FunctionDesc.duration.negate=Calcule un nouvel objet de dur�e, dont la valeur est : -lexicalDuration.\nLa valeur lexicalDuration est la pr�sentation de la cha�ne, "PnYnMnDTnHnMnS" (par ex. P5Y2M15DT4H40M20S)

FunctionDesc.duration.getSign=Renvoie le signe de cette dur�e en -1,0 ou 1.\nLa valeur lexicalDuration est la pr�sentation de la cha�ne, "PnYnMnDTnHnMnS" (par ex. : P5Y2M15DT4H40M20S)

FunctionDesc.duration.compare=Relation de commande partielle entre lexicalDuration1 et lexicalDuration2.\nLa valeur lexicalDuration est la pr�sentation de la cha�ne, "PnYnMnDTnHnMnS" (par ex. P5Y2M15DT4H40M20S)

FunctionDesc.duration.addTo=Ajoute cette dur�e � un objet de date.\nLa valeur lexicalDuration est la pr�sentation de la cha�ne, "PnYnMnDTnHnMnS" (par ex. P5Y2M15DT4H40M20S)\nL'argument startDate est utilis� pour �ter l'ambigu�t� de cet �cart.

FunctionDesc.format=Permet d'obtenir la cha�ne format�e en fonction de l'objet et de la correspondance sp�cifi�s.
