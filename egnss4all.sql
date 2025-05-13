-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Mar 08, 2023 alle 16:48
-- Versione del server: 8.0.27
-- Versione PHP: 8.0.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `egnss4all`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `comm_log`
--

CREATE TABLE `comm_log` (
  `id` bigint NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `error_msg` text,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- --------------------------------------------------------

--
-- Struttura della tabella `land`
--

CREATE TABLE `land` (
  `id` bigint NOT NULL,
  `identificator` varchar(45) DEFAULT NULL,
  `pa_description` text,
  `wkt` text,
  `wgs_geometry` mediumtext,
  `wgs_max_lat` float DEFAULT NULL,
  `wgs_min_lat` float DEFAULT NULL,
  `wgs_max_lng` float DEFAULT NULL,
  `wgs_min_lng` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struttura della tabella `pa`
--

CREATE TABLE `pa` (
  `id` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dump dei dati per la tabella `pa`
--

INSERT INTO `pa` (`id`, `name`, `timestamp`) VALUES
(1, 'admin', '2021-04-27 18:48:57');

-- --------------------------------------------------------

--
-- Struttura della tabella `page`
--

CREATE TABLE `page` (
  `id` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dump dei dati per la tabella `page`
--

INSERT INTO `page` (`id`, `name`, `timestamp`) VALUES
(1, 'login', '2021-04-27 14:52:07'),
(2, 'list farmářů', '2021-04-27 14:52:07'),
(3, 'seznam úkolů', '2021-04-27 14:52:07'),
(4, 'popup mapy', '2021-04-27 14:52:07'),
(5, 'detail úkolu', '2021-04-27 14:52:07'),
(6, 'base šablona', '2021-04-27 14:52:07'),
(7, 'galerie neprirazenych fotek', '2021-04-27 14:53:31'),
(8, 'cesty', '2021-04-27 14:53:31'),
(9, 'správa agentur', '2021-04-27 14:53:31'),
(10, 'správa PA officer', '2021-04-27 14:53:31'),
(11, 'release notes', '2021-04-27 14:53:31'),
(91, 'PHOTO_PDF_EXPORT', '2021-04-27 14:53:31');

-- --------------------------------------------------------

--
-- Struttura della tabella `page_lang`
--

CREATE TABLE `page_lang` (
  `id` bigint NOT NULL,
  `page_id` bigint NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `template_param` varchar(45) NOT NULL,
  `cz` varchar(4000) DEFAULT NULL,
  `en` varchar(4000) DEFAULT NULL,
  `it` varchar(4000) DEFAULT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dump dei dati per la tabella `page_lang`
--

INSERT INTO `page_lang` (`id`, `page_id`, `description`, `template_param`, `cz`, `en`, `it`, `timestamp`) VALUES
(1, 1, 'login titulek', 'title', 'Přihlášení', 'Login', 'Accesso', '2021-04-27 15:10:40'),
(2, 1, 'egnss login', 'heading', 'EGNSS4CAP PŘIHLÁŠENÍ', 'EGNSS4CAP LOGIN', 'Accesso EGNSS4CAP', '2021-04-27 15:10:40'),
(3, 1, 'user name', 'user_name', 'Uživatelské jméno:', 'User name:', 'Nome utente:', '2021-04-27 15:10:40'),
(4, 1, 'heslo', 'password', 'Heslo:', 'Password:', 'Password:', '2021-04-27 15:10:40'),
(5, 1, 'enter tlačítko', 'enter', 'Přihlásit', 'Enter', 'Invio', '2021-04-27 15:10:40'),
(6, 1, 'špatné heslo', 'wrong_login', 'Špatné přihlašovací údaje.', 'Login credentials don\'t match.', 'Credenziali non riconosciute', '2021-04-27 15:10:40'),
(7, 2, 'farmáři titulek', 'title', 'List farmářů', 'Farmers list', 'Lista agricoltori', '2021-04-27 15:10:40'),
(8, 2, 'nadpis', 'heading', 'Správa uživatelů', 'User management', 'Gestione utenti', '2021-04-27 15:10:40'),
(9, 2, 'tlačítko nový farmář', 'new_farmer', 'Přidat farmáře', 'Add new farmer', 'Aggiungi farmer', '2021-04-27 15:10:40'),
(10, 2, 'login', 'login', 'login', 'login', 'login', '2021-04-27 15:10:40'),
(11, 2, 'heslo', 'password', 'Heslo', 'Password', 'password', '2021-04-27 15:10:40'),
(12, 2, 'jméno', 'name', 'Jméno', 'Name', 'Nome', '2021-04-27 15:10:40'),
(13, 2, 'příjmení', 'surname', 'Příjmení', 'Surname', 'Cognome', '2021-04-27 15:10:40'),
(14, 2, 'identifikační číslo', 'ji', 'JI', 'Identification number', 'Numero C.I.', '2021-04-27 15:10:40'),
(15, 2, 'e-mail', 'email', 'E-mail', 'E-mail', 'E-mail', '2021-04-27 15:10:40'),
(16, 2, 'vat', 'vat', 'Vat', 'Vat', 'P.IVA', '2021-04-27 15:10:40'),
(17, 2, 'tlačítko uložit', 'save', 'Uložit', 'Save', 'Salva', '2021-04-27 15:10:40'),
(18, 2, 'id', 'id', 'ID', 'ID', 'ID', '2021-04-27 15:10:40'),
(19, 3, 'úkoly titulek', 'title', 'Seznam úkolů', 'Task list', 'Lista incarichi', '2021-04-27 15:10:40'),
(20, 3, 'úkoly', 'task_s', 'úkoly', 'tasks', 'incarichi', '2021-04-27 15:10:40'),
(21, 3, 'úkoly', 'task_l', 'Úkoly', 'Tasks', 'Incarichi', '2021-04-27 15:10:40'),
(22, 3, 'nový úkol button', 'new_task_btn', 'Přidat nový', 'Add new task', 'Aggiungi incarico', '2021-04-27 15:10:40'),
(23, 3, 'status', 'status', 'Status', 'Status', 'Stato', '2021-04-27 15:10:40'),
(24, 3, 'jmeno', 'name', 'Název', 'Name', 'Nome', '2021-04-27 15:10:40'),
(25, 3, 'popis', 'description', 'Popis', 'Description', 'Descrizione', '2021-04-27 15:10:40'),
(26, 3, 'poznámka', 'note', 'Poznámka', 'Note', 'Note', '2021-04-27 15:10:40'),
(27, 3, 'do data', 'due_date', 'Datum do splnění', 'Due date', 'Data scadenza', '2021-04-27 15:10:40'),
(28, 3, 'ulož button', 'save', 'Uložit', 'Save', 'Salva', '2021-04-27 15:10:40'),
(29, 3, 'počet fotek', 'photos', 'Počet fotek', 'Photos taken', 'Foto scattate', '2021-04-27 15:10:40'),
(30, 3, 'datum vytvoření', 'date_created', 'Datum vytvoření', 'Date created', 'Data creazione', '2021-04-27 15:10:40'),
(31, 3, 'přijetí', 'accept', 'Stav přijetí', 'Acceptation', 'Accettazione', '2021-04-27 15:10:40'),
(32, 3, 'schváleno', 'ack', 'Schváleno', 'Accepted', 'Accettato', '2021-04-27 15:10:40'),
(33, 3, 'odmítnoto', 'decline', 'Zamítnuto', 'Declined', 'Non accettato', '2021-04-27 15:10:40'),
(34, 3, 'čeká', 'wait', 'Čeká', 'Waiting', 'Attesa', '2021-04-27 15:10:40'),
(35, 4, 'počet fotek', 'count', 'Počet fotek:', 'Photos count:', 'Conteggio foto', '2021-04-27 15:10:40'),
(36, 5, 'detail úkolu', 'title', 'Detail úkolu', 'Task detail', 'Dettaglio incarico', '2021-04-27 15:10:40'),
(37, 5, 'nadpis', 'header', 'detail úkolu', 'task detail', 'dettaglio incarico', '2021-04-27 15:10:40'),
(38, 5, 'status', 'status', 'Status', 'Status', 'Stato', '2021-04-27 15:10:40'),
(39, 5, 'jméno', 'name', 'Název', 'Name', 'Nome', '2021-04-27 15:10:40'),
(40, 5, 'popis', 'description', 'Popis', 'Description', 'Descrizione', '2021-04-27 15:10:40'),
(41, 5, 'vytvořeno', 'created', 'Vytvořeno', 'Date created', 'Data creazione', '2021-04-27 15:10:40'),
(42, 5, 'do data', 'due_date', 'Datum do splnění', 'Due date', 'Data scadenza', '2021-04-27 15:10:40'),
(43, 5, 'akce', 'action', 'Akce', 'Actions', 'Azioni', '2021-04-27 15:10:40'),
(44, 5, 'schváleno', 'ack', 'Schváleno', 'Accepted', 'Accettato', '2021-04-27 15:10:40'),
(45, 5, 'odmítnoto', 'decline', 'Zamítnuto', 'Declined', 'Non accettato', '2021-04-27 15:10:40'),
(46, 6, 'domů', 'home', 'Domů', 'Home', 'Principale', '2021-04-27 15:10:40'),
(47, 6, 'odhlásit', 'logout', 'Odhlásit', 'Logout', 'Logout', '2021-04-27 15:10:40'),
(48, 3, 'zpět', 'back', 'zpět', 'back', 'indietro', '2021-04-27 15:10:40'),
(49, 5, 'zpět', 'back', 'zpět', 'back', 'indietro', '2021-04-27 15:10:40'),
(50, 2, NULL, 'new_farmer_header', 'Nový farmář', 'New farmer', 'Nuovo agricoltore', '2021-04-27 15:10:40'),
(51, 3, NULL, 'new_task_header', 'Nový úkol', 'New task', 'Nuovo incarico', '2021-04-27 15:10:40'),
(52, 3, NULL, 'unassigned_photos', 'Zobrazit nepřiřazené fotky', 'Show unassigned photos', 'Mostra foto non assegnate', '2021-04-27 15:10:40'),
(53, 7, NULL, 'heading', 'Galerie nepřiřazených fotek', 'Gallery of unassigned photos', 'Galleria foto non assegnate', '2021-04-27 15:10:40'),
(54, 7, 'zpět', 'back', 'zpět', 'back', 'indietro', '2021-04-27 15:10:40'),
(55, 7, 'vybrat task', 'choose_task_button', 'Vybrat úkol', 'Choose task', 'Scegli incarico', '2021-04-27 15:10:40'),
(56, 7, 'přiřadit k tasku', 'assign_photos_button', 'Přiřadit', 'Assign', 'Assegna', '2021-04-27 15:10:40'),
(57, 5, 'detail fotky meta', 'photo_meta_head', 'Metadata fotky', 'Photos metadata', 'Metadati foto', '2021-04-27 15:10:40'),
(58, 5, '', 'pht_lat', 'Zeměpisná šířka', 'Latitude', 'Latitudine', '2021-04-27 15:10:40'),
(59, 5, '', 'pht_lng', 'Zeměpisná délka', 'Longitude', 'Longitudine', '2021-04-27 15:10:40'),
(60, 5, '', 'pht_altitude', 'Nadmořská výška', 'Altitude', 'Altitudine', '2021-04-27 15:10:40'),
(61, 5, '', 'pht_bearing', 'Bearing', 'Bearing', 'Bearing', '2021-04-27 15:10:40'),
(62, 5, '', 'pht_azimuth', 'Azimuth', 'Azimut', 'Azimuth', '2021-04-27 15:10:40'),
(63, 5, '', 'pht_roll', 'Roll', 'Roll', 'Roll', '2021-04-27 15:10:40'),
(64, 5, '', 'pht_pitch', 'Pitch', 'Pitch', 'Pitch', '2021-04-27 15:10:40'),
(65, 5, '', 'pht_orientation', 'Orientace', 'Orientation', 'Orientamento', '2021-04-27 15:10:40'),
(66, 5, '', 'pht_hvangle', 'Horizontální úhel pohledu', 'Horizontal view angle', 'Angolo vista orizzontale', '2021-04-27 15:10:40'),
(67, 5, '', 'pht_vvangle', 'Vertikální úhel pohledu', 'Vertical view angle', 'Angolo vista verticale', '2021-04-27 15:10:40'),
(68, 5, '', 'pht_accuracy', 'Přesnost', 'Accuracy', 'Precisione', '2021-04-27 15:10:40'),
(69, 5, '', 'pht_device', 'Zařízení', 'Device', 'Dispositivo', '2021-04-27 15:10:40'),
(70, 5, '', 'pht_satsinfo', 'Satelitní info', 'Satellite info', 'Informazioni satelliti', '2021-04-27 15:10:40'),
(71, 5, '', 'pht_nmea', 'NMEA', 'NMEA', 'NMEA', '2021-04-27 15:10:40'),
(72, 5, '', 'pht_network', 'Síť', 'Network', 'Rete', '2021-04-27 15:10:40'),
(73, 5, '', 'pht_distance', 'Vzdálenost', 'Distance', 'Distanza', '2021-04-27 15:10:40'),
(74, 5, '', 'pht_timestamp', 'Časové razítko', 'Timestamp', 'Timestamp', '2021-04-27 15:10:40'),
(75, 5, '', 'pht_yes', 'ANO', 'YES', 'SI', '2021-04-27 15:10:40'),
(76, 5, '', 'pht_no', 'NE', 'NO', 'NO', '2021-04-27 15:10:40'),
(77, 5, '', 'pht_note', 'Poznámka', 'Note', 'Note', '2021-04-27 15:10:40'),
(78, 7, 'detail fotky meta', 'photo_meta_head', 'Metadata fotky', 'Photos metadata', 'Metadati foto', '2021-04-27 15:10:40'),
(79, 7, '', 'pht_lat', 'Zeměpisná šířka', 'Latitude', 'Latitudine', '2021-04-27 15:10:40'),
(80, 7, '', 'pht_lng', 'Zeměpisná délka', 'Longitude', 'Longitudine', '2021-04-27 15:10:40'),
(81, 7, '', 'pht_altitude', 'Nadmořská výška', 'Altitude', 'Altitudine', '2021-04-27 15:10:40'),
(82, 7, '', 'pht_bearing', 'Bearing', 'Bearing', 'Bearing', '2021-04-27 15:10:40'),
(83, 7, '', 'pht_azimuth', 'Azimuth', 'Azimut', 'Azimuth', '2021-04-27 15:10:40'),
(84, 7, '', 'pht_roll', 'Roll', 'Roll', 'Roll', '2021-04-27 15:10:40'),
(85, 7, '', 'pht_pitch', 'Pitch', 'Pitch', 'Pitch', '2021-04-27 15:10:40'),
(86, 7, '', 'pht_orientation', 'Orientace', 'Orientation', 'Orientamento', '2021-04-27 15:10:40'),
(87, 7, '', 'pht_hvangle', 'Horizontální úhel pohledu', 'Horizontal view angle', 'Angolo vista orizzontale', '2021-04-27 15:10:40'),
(88, 7, '', 'pht_vvangle', 'Vertikální úhel pohledu', 'Vertical view angle', 'Angolo vista verticale', '2021-04-27 15:10:40'),
(89, 7, '', 'pht_accuracy', 'Přesnost', 'Accuracy', 'Precisione', '2021-04-27 15:10:40'),
(90, 7, '', 'pht_device', 'Zařízení', 'Device', 'Dispositivo', '2021-04-27 15:10:40'),
(91, 7, '', 'pht_satsinfo', 'Satelitní info', 'Satellite info', 'Informazioni satelliti', '2021-04-27 15:10:40'),
(92, 7, '', 'pht_nmea', 'NMEA', 'NMEA', 'NMEA', '2021-04-27 15:10:40'),
(93, 7, '', 'pht_network', 'Síť', 'Network', 'Rete', '2021-04-27 15:10:40'),
(94, 7, '', 'pht_distance', 'Vzdálenost', 'Distance', 'Distanza', '2021-04-27 15:10:40'),
(95, 7, '', 'pht_timestamp', 'Časové razítko', 'Timestamp', 'Timestamp', '2021-04-27 15:10:40'),
(96, 7, '', 'pht_yes', 'ANO', 'YES', 'SI', '2021-04-27 15:10:40'),
(97, 7, '', 'pht_no', 'NE', 'NO', 'NO', '2021-04-27 15:10:40'),
(98, 7, '', 'pht_note', 'Poznámka', 'Note', 'Note', '2021-04-27 15:10:40'),
(99, 2, 'tlacitko editovat farmare', 'edit_user', 'Editovat farmáře', 'Edit farmer', 'Modifica agricoltore', '2021-04-27 15:10:40'),
(100, 2, 'akce', 'action', 'Akce', 'Actions', 'Azioni', '2021-04-27 15:10:40'),
(101, 2, NULL, 'edit_farmer_header', 'Editace farmáře', 'Editation of farmer', 'Modifica agricoltore', '2021-04-27 15:10:40'),
(102, 2, 'tlačítko zavřít', 'close', 'Zavřít', 'Close', 'Chiudi', '2021-04-27 15:10:40'),
(103, 2, 'tlačítko reset řazení', 'reset_sort', 'Zrušit řazení', 'Cancel sorting', 'Annulla ordinamento', '2021-04-27 15:10:40'),
(104, 3, 'tlačítko reset řazení', 'reset_sort', 'Zrušit řazení', 'Cancel sorting', 'Annulla ordinamento', '2021-04-27 15:10:40'),
(105, 2, 'počet úkolů', 'tasks_count_text', 'Počet úkolů', 'Tasks count', 'Conteggio incarichi', '2021-04-27 15:10:40'),
(106, 2, 'počet fotek', 'photos_count_text', 'Počet fotek', 'Photos count', 'Conteggio foto', '2021-04-27 15:10:40'),
(107, 2, 'počet nepřiřazených fotek', 'unassigned_photos_count_text', 'Nepřiřazené fotky', 'Unassigned photos', 'Foto non assegnate', '2021-04-27 15:10:40'),
(108, 5, '', 'pht_created_date', 'Vytvořeno (UTC)', 'Created (UTC)', 'Creato (UTC)', '2021-04-27 15:10:40'),
(109, 7, '', 'pht_created_date', 'Vytvořeno (UTC)', 'Created (UTC)', 'Creato (UTC)', '2021-04-27 15:10:40'),
(110, 3, '', 'task_due_date_error', 'Datum do splnění nemůže být v minulosti!', 'Due date has to be in the future!', 'Data scadenza deve essere nel futuro', '2021-04-27 15:10:40'),
(111, 5, '', 'task_photo_accept_error', 'Úkol nemůže být schválen bez fotografií!', 'Task cannot be accepted without photos!', 'L\'incarico non può essere accettato senza foto', '2021-04-27 15:10:40'),
(112, 5, '', 'task_accept_confirm', 'Schválit úkol?', 'Accept task?', 'Accettare incarico?', '2021-04-27 15:10:40'),
(113, 5, '', 'task_decline_confirm', 'Zamítnout úkol? Prosím, doplňte důvod zamítnutí.', 'Decline task? Enter reason of decline, please.', 'Declinare incarico? Inserire una motivazione per cortesia', '2021-04-27 15:10:40'),
(114, 5, '', 'task_return_confirm', 'Vrátit úkol farmáři? Prosím, doplňte důvod vrácení.', 'Return task to farmer? Enter reason of reopening, please.', 'Ridare incarico all\'agricoltore? Inserire una motivazione...', '2021-04-27 15:10:40'),
(115, 5, 'poznámka', 'note', 'Poznámka', 'Note', 'Note', '2021-04-27 15:10:40'),
(116, 3, 'vráceno', 'returned', 'Znovuotevřeno', 'Reopened', 'Riaperto', '2021-04-27 15:10:40'),
(117, 5, 'vráceno', 'returned', 'Znovuotevřeno', 'Reopened', 'Riaperto', '2021-04-27 15:10:40'),
(118, 5, 'důvod znovuotevření', 'note_returned', 'Důvod znovuotevření', 'Reopen reason', 'Motivazione riapertura', '2021-04-27 15:10:40'),
(119, 5, '', 'pht_rotate_left', 'Otočit vlevo', 'Rotate left', 'Ruota a sinistra', '2021-04-27 15:10:40'),
(120, 5, '', 'pht_rotate_right', 'Otočit vpravo', 'Rotate right', 'Ruota a destra', '2021-04-27 15:10:40'),
(121, 7, '', 'pht_rotate_left', 'Otočit vlevo', 'Rotate left', 'Ruota a sinistra', '2021-04-27 15:10:40'),
(122, 7, '', 'pht_rotate_right', 'Otočit vpravo', 'Rotate right', 'Ruota a destra', '2021-04-27 15:10:40'),
(123, 5, '', 'note_declined', 'Důvod zamítnutí', 'Decline reason', 'Motivazione declinazione', '2021-04-27 15:10:40'),
(124, 5, '', 'task_delete_confirm', 'Smazat úkol?', 'Delete task?', 'Cancellare incarico?', '2021-04-27 15:10:40'),
(125, 5, '', 'task_photo_delete_error', 'Není možné úkol smazat.', 'Task cannot be deleted.', 'L\'incarico non può essere eliminato', '2021-04-27 15:10:40'),
(126, 3, 'ucel', 'type', 'Účel', 'Purpose', 'Scopo', '2021-04-27 15:10:40'),
(127, 5, 'ucel', 'type', 'Účel', 'Purpose', 'Scopo', '2021-04-27 15:10:40'),
(128, 3, '', 'group_task_accept', 'Hromadné akce', 'Bulk actions', 'Azioni in blocco', '2021-04-27 15:10:40'),
(129, 3, '', 'group_task_accept_button', 'Schválit hromadně', 'Bulk accept', 'Accetta in blocco', '2021-04-27 15:10:40'),
(130, 3, '', 'group_task_accept_confirm', 'Hromadně schválit vybrané úkoly?', 'Bulk accept selected tasks?', 'Accettare in blocco gli incarichi?', '2021-04-27 15:10:40'),
(131, 7, '', 'pht_select', 'Vybrat', 'Select', 'Seleziona', '2021-04-27 15:10:40'),
(132, 7, '', 'pht_delete', 'Smazat fotku', 'Delete photo', 'Cancella foto', '2021-04-27 15:10:40'),
(133, 7, '', 'select_all', 'Vybrat vše', 'Select all', 'Seleziona tutto', '2021-04-27 15:10:40'),
(134, 7, '', 'deselect_all', 'Zrušit výběr', 'Cancel selection', 'Annulla selezione', '2021-04-27 15:10:40'),
(135, 7, '', 'photo_delete_confirm', 'Smazat fotku?', 'Delete photo?', 'Cancellare foto?', '2021-04-27 15:10:40'),
(136, 5, '', 'task_move_from_open_confirm', 'Změnit stav na \"Data provided\"?', 'Change status to \"Data provided\"?', 'Modificare lo stato in \"Dati assegnati\"?', '2021-04-27 15:10:40'),
(137, 5, '', 'task_move_from_open_error', 'K úkolu nejsou přiřazeny žádné fotografie!', 'The task has no photos!', 'Questo incarico non ha foto!', '2021-04-27 15:10:40'),
(138, 7, '', 'assign_photos_select_error', 'Není vybrána žádna fotografie!', 'No photo selected!', 'Nessuna foto selezionata', '2021-04-27 15:10:40'),
(139, 7, '', 'photo_assign_confirm', 'Přiřadit fotografie k vybranému úkolu?', 'Assign photos to selected task?', 'Assegnare foto all\'incarico selezionato?', '2021-04-27 15:10:40'),
(140, 7, '', 'assign_photos_select_error_1', 'Není vybrán žádný úkol!', 'No task selected!', 'Nessun incarico selezionato!', '2021-04-27 15:10:40'),
(141, 7, '', 'photo_multi_delete_confirm', 'Smazat všechny označené fotky?', 'Delete all selected photos?', 'Cancellare tutte le foto selezionate?', '2021-04-27 15:10:40'),
(142, 7, '', 'pht_multi_delete', 'Smazat označené', 'Delete selected', 'Cancella selezionate', '2021-04-27 15:10:40'),
(143, 3, '', 'status_new', 'Nové', 'New', 'Nuovo', '2021-04-27 15:10:40'),
(144, 3, '', 'status_open', 'Otevřené', 'Open', 'Aperto', '2021-04-27 15:10:40'),
(145, 3, '', 'status_provided', 'Poskytnuté', 'Data provided', 'Dati assegnati', '2021-04-27 15:10:40'),
(146, 3, '', 'status_checked', 'Schválené', 'Data checked', 'Dati controllati', '2021-04-27 15:10:40'),
(147, 3, '', 'status_closed', 'Uzavřené', 'Closed', 'Chiudi', '2021-04-27 15:10:40'),
(148, 3, '', 'status_returned', 'Vrácené', 'Returned', 'Ritornato', '2021-04-27 15:10:40'),
(149, 3, '', 'status_flag_accept', 'Schválené', 'Accepted', 'Accettato', '2021-04-27 15:10:40'),
(150, 3, '', 'status_flag_decline', 'Zamítnuté', 'Declined', 'Declinato', '2021-04-27 15:10:40'),
(151, 3, '', 'after_deadline_to_end', 'Prošlé na konec', 'After deadline last', 'Dopo ultima scadenza', '2021-04-27 15:10:40'),
(152, 3, '', 'showing', 'Zobrazeno', 'Showing', 'Mostrando', '2021-04-27 15:10:40'),
(153, 3, '', 'out_of', 'z', 'out of', 'fuori di', '2021-04-27 15:10:40'),
(154, 3, '', 'status_filter', 'Filtr statusu', 'Status filter', 'Filtro stati', '2021-04-27 15:10:40'),
(155, 3, '', 'task_adv_sorting', 'Řazení', 'Sort', 'Ordina', '2021-04-27 15:10:40'),
(156, 2, 'počet tasku v data provided', 'tasks_provided_count_text', 'Poskytnuté úkoly', 'Tasks in Data provided', 'Incarico in dati assegnati', '2021-04-27 15:10:40'),
(157, 5, '', 'pht_angle', 'Úhel pohledu', 'Vertical angle', 'Angolo verticale', '2021-04-27 15:10:40'),
(158, 7, '', 'pht_angle', 'Úhel pohledu', 'Vertical angle', 'Angolo verticale', '2021-04-27 15:10:40'),
(159, 3, '', 'photos_verified', 'Prověřeno', 'Verified', 'Verificato', '2021-04-27 15:10:40'),
(160, 5, '', 'photos_verified', 'Prověřeno', 'Verified', 'Verificato', '2021-04-27 15:10:40'),
(161, 5, '', 'pht_checked_location_ok', 'Poloha fotky je korektní', 'Photo location is correct', 'Posizione foto corretta', '2021-04-27 15:10:40'),
(162, 5, '', 'pht_checked_location_fail', 'Poloha fotky není korektní', 'Photo location is not correct', 'Posizione foto non corretta', '2021-04-27 15:10:40'),
(163, 5, '', 'pht_checked_location_notvf', 'Poloha fotky ještě nebyla ověřena.', 'Photo location has not been verified yet', 'Posizione foto non ancora verificata', '2021-04-27 15:10:40'),
(164, 5, '', 'pht_original_ok', 'Fotka je původní', 'Photo is original', 'Foto originale', '2021-04-27 15:10:40'),
(165, 5, '', 'pht_original_fail', 'Fotka není původní', 'Photo is not original', 'Foto non originale', '2021-04-27 15:10:40'),
(166, 5, '', 'pht_original_notvf', 'Fotka ještě nebyla ověřena', 'Photo has not been verified yet', 'Foto non ancora verificata', '2021-04-27 15:10:40'),
(167, 7, '', 'pht_checked_location_ok', 'Poloha fotky je korektní', 'Photo location is correct', 'Posizione foto corretta', '2021-04-27 15:10:40'),
(168, 7, '', 'pht_checked_location_fail', 'Poloha fotky není korektní', 'Photo location is not correct', 'Posizione foto non corretta', '2021-04-27 15:10:40'),
(169, 7, '', 'pht_checked_location_notvf', 'Poloha fotky ještě nebyla ověřena.', 'Photo location has not been verified yet', 'Posizione foto non ancora verificata', '2021-04-27 15:10:40'),
(170, 7, '', 'pht_original_ok', 'Fotka je původní', 'Photo is original', 'Foto originale', '2021-04-27 15:10:40'),
(171, 7, '', 'pht_original_fail', 'Fotka není původní', 'Photo is not original', 'Foto non originale', '2021-04-27 15:10:40'),
(172, 7, '', 'pht_original_notvf', 'Fotka ještě nebyla ověřena', 'Photo has not been verified yet', 'Foto non ancora verificata', '2021-04-27 15:10:40'),
(173, 3, NULL, 'paths', 'Zobrazit cesty', 'Show paths', 'Mostra percorsi', '2021-04-27 15:10:40'),
(174, 8, '', 'path_id', 'ID cesty', 'Path ID', 'Id percorso', '2021-04-27 15:10:40'),
(175, 8, '', 'path_name', 'Název', 'Name', 'Nome', '2021-04-27 15:10:40'),
(176, 8, '', 'path_start', 'Začátek cesty', 'Path start time', 'Tempo inizio percorso', '2021-04-27 15:10:40'),
(177, 8, '', 'path_end', 'Konec cesty', 'Path end time', 'Tempo fine percorso', '2021-04-27 15:10:40'),
(178, 8, '', 'path_actions', 'Akce', 'Actions', 'Azioni', '2021-04-27 15:10:40'),
(179, 8, '', 'back', 'Zpět', 'Back', 'Indietro', '2021-04-27 15:10:40'),
(180, 8, '', 'path_delete', 'Odstranit cestu', 'Delete path', 'Cancella percorso', '2021-04-27 15:10:40'),
(181, 8, '', 'path_delete_confirm', 'Opravdu odstranit cestu?', 'Are you sure with deleting path?', 'Sei sicuro di cancellare il percorso?', '2021-04-27 15:10:40'),
(182, 8, '', 'path_area', 'Plocha', 'Area', 'Area', '2021-04-27 15:10:40'),
(183, 9, NULL, 'heading', 'Správa agentur', 'Agency management', 'Gestione agenzia', '2021-04-27 15:10:40'),
(184, 10, NULL, 'heading', 'Editace spravců', 'Officers management', 'Gestione ufficiali', '2021-04-27 15:10:40'),
(185, 9, NULL, 'agency_name_text', 'Název agentury', 'Agency name', 'Nome agenzia', '2021-04-27 15:10:40'),
(186, 10, NULL, 'new_farmer', 'Nový správce', 'New officer', 'Nuovo ufficiale', '2021-04-27 15:10:40'),
(187, 10, NULL, 'back', 'Zpět', 'Back', 'Indietro', '2021-04-27 15:10:40'),
(188, 10, NULL, 'new_farmer_header', 'Přidat nového správce', 'Add new officer', 'Aggiungi ufficiale', '2021-04-27 15:10:40'),
(189, 10, NULL, 'officer_login_text', 'Login', 'Login', 'Login', '2021-04-27 15:10:40'),
(190, 10, NULL, 'officer_name_text', 'Jméno', 'Name', 'Nome', '2021-04-27 15:10:40'),
(191, 10, NULL, 'officer_surname_text', 'Příjmení', 'Surname', 'Cognome', '2021-04-27 15:10:40'),
(192, 10, NULL, 'officer_actions_text', 'Akce', 'Actions', 'Azioni', '2021-04-27 15:10:40'),
(193, 10, 'login', 'login', 'login', 'login', 'login', '2021-04-27 15:10:40'),
(194, 10, 'heslo', 'password', 'Heslo', 'Password', 'Password', '2021-04-27 15:10:40'),
(195, 10, 'jméno', 'name', 'Jméno', 'Name', 'Nome', '2021-04-27 15:10:40'),
(196, 10, 'příjmení', 'surname', 'Příjmení', 'Surname', 'Cognome', '2021-04-27 15:10:40'),
(197, 10, 'identifikační číslo', 'ji', 'JI', 'Identification number', 'Numero identificativo', '2021-04-27 15:10:40'),
(198, 10, 'e-mail', 'email', 'E-mail', 'E-mail', 'E-mail', '2021-04-27 15:10:40'),
(199, 10, 'vat', 'vat', 'Vat', 'Vat', 'P.IVA', '2021-04-27 15:10:40'),
(200, 10, 'tlačítko uložit', 'save', 'Uložit', 'Save', 'Salva', '2021-04-27 15:10:40'),
(201, 10, 'tlačítko zavřít', 'close', 'Zavřít', 'Close', 'Chiudi', '2021-04-27 15:10:40'),
(202, 10, '', 'edit_user', 'Upravit', 'Edit', 'Modifica', '2021-04-27 15:10:40'),
(203, 10, '', 'deactivate_user', 'Deaktivovat', 'Deactivate', 'Disattiva', '2021-04-27 15:10:40'),
(204, 10, '', 'officer_deactivate_confirm', 'Opravdu si přejete správce deaktivovat?', 'Are you sure with deactivating officer?', 'Sei sicuro di voler disattivare l\'ufficiale?', '2021-04-27 15:10:40'),
(205, 10, '', 'officer_deactivate_error', 'Správce se nepodařilo deaktivovat.', 'Officer cannot be deactivated.', 'L\'ufficiale non può essere disattivato', '2021-04-27 15:10:40'),
(206, 9, NULL, 'new_agency', 'Přidat novou agenturu', 'Add new agency', 'Aggiungi agenzia', '2021-04-27 15:10:40'),
(207, 9, NULL, 'back', 'Zpět', 'Back', 'Indietro', '2021-04-27 15:10:40'),
(208, 9, NULL, 'new_agency_header', 'Přidat novou agenturu', 'Add new agency', 'Aggiungi agenzia', '2021-04-27 15:10:40'),
(209, 9, 'název', 'name', 'Název agentury', 'Agency name', 'Nome agenzia', '2021-04-27 15:10:40'),
(210, 9, 'tlačítko uložit', 'save', 'Uložit', 'Save', 'Salva', '2021-04-27 15:10:40'),
(211, 9, 'tlačítko zavřít', 'close', 'Zavřít', 'Close', 'Chiudi', '2021-04-27 15:10:40'),
(212, 5, NULL, 'pdf_export', 'Exportovat do PDF', 'Export to PDF', 'Esporta in PDF', '2021-04-27 15:10:40'),
(213, 7, NULL, 'pdf_export', 'Exportovat do PDF', 'Export to PDF', 'Esporta in PDF', '2021-04-27 15:10:40'),
(214, 91, '', 'pht_checked_location_ok', 'Poloha fotky je korektní', 'Photo location is correct', 'Posizione foto corretta', '2021-04-27 15:10:40'),
(215, 91, '', 'pht_checked_location_fail', 'Poloha fotky není korektní', 'Photo location is not correct', 'Posizione foto non corretta', '2021-04-27 15:10:40'),
(216, 91, '', 'pht_checked_location_notvf', 'Poloha fotky ještě nebyla ověřena.', 'Photo location has not been verified yet', 'Posizione foto non ancora verificata', '2021-04-27 15:10:40'),
(217, 91, '', 'pht_original_ok', 'Fotka je původní', 'Photo is original', 'Foto originale', '2021-04-27 15:10:40'),
(218, 91, '', 'pht_original_fail', 'Fotka není původní', 'Photo is not original', 'Foto non originale', '2021-04-27 15:10:40'),
(219, 91, '', 'pht_original_notvf', 'Fotka ještě nebyla ověřena', 'Photo has not been verified yet', 'Foto non ancora verificata', '2021-04-27 15:10:40'),
(220, 91, 'detail fotky meta', 'photo_meta_head', 'Metadata fotky', 'Photos metadata', 'Metadati foto', '2021-04-27 15:10:40'),
(221, 91, '', 'pht_lat', 'Zeměpisná šířka', 'Latitude', 'Latitudine', '2021-04-27 15:10:40'),
(222, 91, '', 'pht_lng', 'Zeměpisná délka', 'Longitude', 'Longitudine', '2021-04-27 15:10:40'),
(223, 91, '', 'pht_altitude', 'Nadmořská výška', 'Altitude', 'Altitudine', '2021-04-27 15:10:40'),
(224, 91, '', 'pht_bearing', 'Bearing', 'Bearing', 'Bearing', '2021-04-27 15:10:40'),
(225, 91, '', 'pht_azimuth', 'Azimuth', 'Azimut', 'Azimut', '2021-04-27 15:10:40'),
(226, 91, '', 'pht_roll', 'Roll', 'Roll', 'Roll', '2021-04-27 15:10:40'),
(227, 91, '', 'pht_pitch', 'Pitch', 'Pitch', 'Pitch', '2021-04-27 15:10:40'),
(228, 91, '', 'pht_orientation', 'Orientace', 'Orientation', 'Orientamento', '2021-04-27 15:10:40'),
(229, 91, '', 'pht_hvangle', 'Horizontální úhel pohledu', 'Horizontal view angle', 'Angolo vista orizzontale', '2021-04-27 15:10:40'),
(230, 91, '', 'pht_vvangle', 'Vertikální úhel pohledu', 'Vertical view angle', 'Angolo vista verticale', '2021-04-27 15:10:40'),
(231, 91, '', 'pht_accuracy', 'Přesnost', 'Accuracy', 'Precisione', '2021-04-27 15:10:40'),
(232, 91, '', 'pht_device', 'Zařízení', 'Device', 'Dispositivo', '2021-04-27 15:10:40'),
(233, 91, '', 'pht_satsinfo', 'Satelitní info', 'Satellite info', 'Info satelliti', '2021-04-27 15:10:40'),
(234, 91, '', 'pht_nmea', 'NMEA', 'NMEA', 'NMEA', '2021-04-27 15:10:40'),
(235, 91, '', 'pht_network', 'Síť', 'Network', 'Rete', '2021-04-27 15:10:40'),
(236, 91, '', 'pht_distance', 'Vzdálenost', 'Distance', 'Distanza', '2021-04-27 15:10:40'),
(237, 91, '', 'pht_timestamp', 'Časové razítko (UTC)', 'Timestamp (UTC)', 'Timestamp (UTC)', '2021-04-27 15:10:40'),
(238, 91, '', 'pht_yes', 'ANO', 'YES', 'SI', '2021-04-27 15:10:40'),
(239, 91, '', 'pht_no', 'NE', 'NO', 'NO', '2021-04-27 15:10:40'),
(240, 91, '', 'pht_note', 'Poznámka', 'Note', 'Note', '2021-04-27 15:10:40'),
(241, 91, '', 'pht_angle', 'Úhel pohledu', 'Vertical angle', 'Angolo verticale', '2021-04-27 15:10:40'),
(242, 91, '', 'pht_created_date', 'Vytvořeno (UTC)', 'Created (UTC)', 'Creato (UTC)', '2021-04-27 15:10:40'),
(243, 91, 'status', 'status', 'Status', 'Status', 'Stato', '2021-04-27 15:10:40'),
(244, 91, 'jméno', 'name', 'Název', 'Name', 'Nome', '2021-04-27 15:10:40'),
(245, 91, 'popis', 'description', 'Pokyny', 'Guidelines', 'Linee guida', '2021-04-27 15:10:40'),
(246, 91, 'vytvořeno', 'created', 'Vytvořeno', 'Date created', 'Data creazione', '2021-04-27 15:10:40'),
(247, 91, 'do data', 'due_date', 'Datum do splnění', 'Due date', 'Data scadenza', '2021-04-27 15:10:40'),
(248, 91, 'akce', 'action', 'Akce', 'Actions', 'Azioni', '2021-04-27 15:10:40'),
(249, 91, 'schváleno', 'ack', 'Schváleno', 'Accepted', 'Accettato', '2021-04-27 15:10:40'),
(250, 91, 'odmítnuto', 'decline', 'Zamítnuto', 'Declined', 'Declinato', '2021-04-27 15:10:40'),
(251, 91, '', 'photos_verified', 'Prověřeno', 'Verified', 'Verificato', '2021-04-27 15:10:40'),
(252, 91, 'poznámka', 'note', 'Poznámka', 'Note', 'Note', '2021-04-27 15:10:40'),
(253, 91, 'důvod znovuotevření', 'note_returned', 'Důvod znovuotevření', 'Reopen reason', 'Motivazione riapertura', '2021-04-27 15:10:40'),
(254, 91, 'ucel', 'type', 'Účel', 'Purpose', 'Scopo', '2021-04-27 15:10:40'),
(255, 91, '', 'note_declined', 'Důvod zamítnutí', 'Decline reason', 'Motivazione declinazione', '2021-04-27 15:10:40'),
(256, 91, '', 'yes', 'Ano', 'Yes', 'Si', '2021-04-27 15:10:40'),
(257, 91, '', 'no', 'Ne', 'No', 'No', '2021-04-27 15:10:40'),
(258, 91, 'nadpis', 'header', 'detail úkolu', 'task detail', 'Dettaglio incarico', '2021-04-27 15:10:40'),
(259, 91, NULL, 'heading', 'Galerie nepřiřazených fotek', 'Gallery of unassigned photos', 'Galleria foto non assegnate', '2021-04-27 15:10:40'),
(260, 11, NULL, 'heading', 'Poznámky k verzím', 'Release notes', 'Note rilascio', '2021-04-27 15:10:40'),
(261, 11, NULL, 'web_heading', 'Webová konzole', 'Web console', 'Console Web', '2021-04-27 15:10:40'),
(262, 11, NULL, 'ios_heading', 'iOS', 'iOS', 'iOS', '2021-04-27 15:10:40'),
(263, 11, NULL, 'android_heading', 'Android', 'Android', 'Android', '2021-04-27 15:10:40'),
(264, 11, NULL, 'version', 'Verze', 'Version', 'Versione', '2021-04-27 15:10:40'),
(265, 11, NULL, 'text', 'Poznámka', 'Note', 'Note', '2021-04-27 15:10:40'),
(266, 6, 'release notes', 'release_notes', 'Poznámky k verzím', 'Release notes', 'Note rilascio', '2021-04-27 15:10:40'),
(267, 8, '', 'path_show', 'Zobrazit na mapě', 'Show on map', 'Mostra su mappa', '2021-04-27 15:10:40'),
(268, 5, '', 'tooltip_task_ack', 'Schválit', 'Accept', 'Accetta', '2021-04-27 15:10:40'),
(269, 5, '', 'tooltip_task_decline', 'Zamítnout', 'Decline', 'Declina', '2021-04-27 15:10:40'),
(270, 5, '', 'tooltip_task_return', 'Vrátit', 'Return', 'Ritorna', '2021-04-27 15:10:40'),
(271, 5, '', 'tooltip_task_delete', 'Smazat', 'Delete', 'Cancella', '2021-04-27 15:10:40'),
(272, 5, '', 'tooltip_task_move_from_open', 'Posunout do Data provided', 'Move to Data provided', 'Muovi a dati forniti', '2021-04-27 15:10:40'),
(273, 91, '', 'pht_distance_nmea', 'Vzdálenost (GNSS)', 'Distance (GNSS)', 'Distanza (GNSS)', '2021-04-27 15:10:40'),
(274, 5, '', 'pht_distance_nmea', 'Vzdálenost (GNSS)', 'Distance (GNSS)', 'Distanza (GNSS)', '2021-04-27 15:10:40'),
(275, 7, '', 'pht_distance_nmea', 'Vzdálenost (GNSS)', 'Distance (GNSS)', 'Distanza (GNSS)', '2021-04-27 15:10:40'),
(276, 5, '', 'pht_distance_nmea_title', 'Vzdálenost mezi polohou dle souřadnic a polohou dle GNSS', 'Distance between location by coordinates and location by GNSS', 'Distanza tra luoghi per coordinate e posizione tramite GNSS', '2021-04-27 15:10:40'),
(277, 7, '', 'pht_distance_nmea_title', 'Vzdálenost mezi polohou dle souřadnic a polohou dle GNSS', 'Distance between location by coordinates and location by GNSS', 'Distanza tra luoghi per coordinate e posizione tramite GNSS', '2021-04-27 15:10:40'),
(278, 91, '', 'export_date', 'Datum exportu', 'Date of export', 'Data esportazione', '2021-04-27 15:10:40'),
(279, 91, '', 'photo_exported', 'Exportováno', 'Exported', 'Esportato', '2021-04-27 15:10:40'),
(280, 91, '', 'photo_out_of', 'z', 'ouf of', 'fuori di', '2021-04-27 15:10:41'),
(281, 91, '', 'photo_photo', 'fotek', 'photos', 'foto', '2021-04-27 15:10:41'),
(282, 5, '', 'pdf_export_selected', 'Exportovat vybrané do PDF', 'Export selected to PDF', 'Esporta selezionati in PDF', '2021-04-27 15:10:41'),
(283, 7, '', 'pdf_export_selected', 'Exportovat vybrané do PDF', 'Export selected to PDF', 'Esporta selezionati in PDF', '2021-04-27 15:10:41'),
(284, 5, '', 'pht_select', 'Vybrat', 'Select', 'Seleziona', '2021-04-27 15:10:41'),
(285, 5, '', 'assign_photos_select_error', 'Není vybrána žádna fotografie!', 'No photo selected!', 'Nessuna foto selezionata', '2021-04-27 15:10:41'),
(286, 7, '', 'show_ekf_metadata', 'Zobrazit EKF metadata', 'Show EKF metadata', 'Mostra metadati EKF', '2021-04-27 15:10:41'),
(287, 5, '', 'show_ekf_metadata', 'Zobrazit EKF metadata', 'Show EKF metadata', 'Mostra metadati EKF', '2021-04-27 15:10:41'),
(288, 7, '', 'pht_ref_time', 'Referenční čas', 'Reference time', 'Tempo di riferimento', '2021-04-27 15:10:41'),
(289, 5, '', 'pht_ref_time', 'Referenční čas', 'Reference time', 'Tempo di riferimento', '2021-04-27 15:10:41'),
(290, 7, '', 'pht_altitude', 'Nadmořská výška', 'Altitude', 'Altitudine', '2021-04-27 15:10:41'),
(291, 5, '', 'pht_altitude', 'Nadmořská výška', 'Altitude', 'Altitudine', '2021-04-27 15:10:41'),
(292, 7, '', 'pht_longitude', 'Zeměpisná délka', 'Longitude', 'Longitudine', '2021-04-27 15:10:41'),
(293, 5, '', 'pht_longitude', 'Zeměpisná délka', 'Longitude', 'Longitudine', '2021-04-27 15:10:41'),
(294, 7, '', 'pht_latitude', 'Zeměpisná šířka', 'Latitude', 'Latitudine', '2021-04-27 15:10:41'),
(295, 5, '', 'pht_latitude', 'Zeměpisná šířka', 'Latitude', 'Latitudine', '2021-04-27 15:10:41'),
(296, 8, '', 'path_device', 'Zařízení', 'Device', 'Dispositivo', '2021-04-27 15:10:41'),
(297, 8, '', 'path_popup_point', 'Bod', 'Point', 'Punto', '2021-04-27 15:10:41'),
(298, 8, '', 'path_popup_path', 'Cesta', 'Path', 'Percorso', '2021-04-27 15:10:41'),
(299, 8, '', 'path_popup_lat', 'Zeměpisná šířka', 'Latitude', 'Latitudine', '2021-04-27 15:10:41'),
(300, 8, '', 'path_popup_lng', 'Zeměpisná délka', 'Longitude', 'Longitudine', '2021-04-27 15:10:41'),
(301, 8, '', 'path_popup_accu', 'Přesnost', 'Accuracy', 'Precisione', '2021-04-27 15:10:41'),
(302, 8, '', 'path_popup_alt', 'Nadmořská výška', 'Altitude', 'Altitudine', '2021-04-27 15:10:41'),
(303, 8, '', 'path_popup_created', 'Čas vzniku', 'Created time', 'Ora creazione', '2021-04-27 15:10:41'),
(304, 91, NULL, 'prep_heading', 'Generování dokumentu PDF', 'Generating of PDF document', 'Generazione documento PDF', '2021-04-27 15:10:41'),
(305, 91, NULL, 'prep_confirm', 'Vygenerovat', 'Generate', 'Genera', '2021-04-27 15:10:41'),
(306, 2, NULL, 'show_map', 'Zobrazit mapu', 'Show map', 'Mostra mappa', '2021-04-27 15:10:41'),
(307, 2, NULL, 'hide_map', 'Schovat mapu', 'Hide map', 'Nascondi mappa', '2021-04-27 15:10:41'),
(308, 3, NULL, 'show_map', 'Zobrazit mapu', 'Show map', 'Mostra mappa', '2021-04-27 15:10:41'),
(309, 3, NULL, 'hide_map', 'Schovat mapu', 'Hide map', 'Nascondi mappa', '2021-04-27 15:10:41'),
(310, 5, NULL, 'show_map', 'Zobrazit mapu', 'Show map', 'Mostra mappa', '2021-04-27 15:10:41'),
(311, 5, NULL, 'hide_map', 'Schovat mapu', 'Hide map', 'Nascondi mappa', '2021-04-27 15:10:41'),
(312, 7, NULL, 'show_map', 'Zobrazit mapu', 'Show map', 'Mostra mappa', '2021-04-27 15:10:41'),
(313, 7, NULL, 'hide_map', 'Schovat mapu', 'Hide map', 'Nascondi mappa', '2021-04-27 15:10:41'),
(314, 8, NULL, 'show_map', 'Zobrazit mapu', 'Show map', 'Mostra mappa', '2021-04-27 15:10:41'),
(315, 8, NULL, 'hide_map', 'Schovat mapu', 'Hide map', 'Nascondi mappa', '2021-04-27 15:10:41'),
(316, 91, NULL, 'counter_out_of', 'z', 'out of', 'fuori di ', '2021-04-27 15:10:41'),
(317, 91, NULL, 'wait', 'Prosím vyčkejte', 'Please wait', 'Attendere prego', '2021-04-27 15:10:41'),
(318, 91, '', 'title', 'PDF Export', 'PDF Export', 'Esporta PDF', '2021-04-27 15:10:41');

-- --------------------------------------------------------

--
-- Struttura della tabella `path`
--

CREATE TABLE `path` (
  `id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `device_manufacture` varchar(255) DEFAULT NULL,
  `device_model` varchar(255) DEFAULT NULL,
  `device_platform` varchar(255) DEFAULT NULL,
  `device_version` varchar(255) DEFAULT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `area` double NOT NULL DEFAULT '0',
  `flg_deleted` int NOT NULL DEFAULT '0',
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- --------------------------------------------------------

--
-- Struttura della tabella `path_point`
--

CREATE TABLE `path_point` (
  `id` bigint NOT NULL,
  `path_id` bigint NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `altitude` float DEFAULT NULL,
  `accuracy` float DEFAULT NULL,
  `created` datetime NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;



-- --------------------------------------------------------

--
-- Struttura della tabella `pa_flag`
--

CREATE TABLE `pa_flag` (
  `id` bigint NOT NULL,
  `flag` varchar(45) NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Dump dei dati della tabella `pa_flag`
--

INSERT INTO `pa_flag` (`id`, `flag`, `timestamp`) VALUES
(1, 'VALID', NOW()),
(2, 'INVALID', NOW()),
(3, 'RETURNED', NOW());


-- --------------------------------------------------------

--
-- Struttura della tabella `photo`
--

CREATE TABLE `photo` (
  `id` bigint NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `task_id` bigint DEFAULT NULL,
  `note` text,
  `lat` float(10,6) DEFAULT NULL,
  `lng` float(10,6) DEFAULT NULL,
  `centroidLat` float(10,6) DEFAULT NULL,
  `centroidLng` float(10,6) DEFAULT NULL,
  `altitude` float DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `bearing` float DEFAULT NULL,
  `magnetic_azimuth` float DEFAULT NULL,
  `photo_heading` float DEFAULT NULL,
  `photo_angle` float DEFAULT NULL,
  `roll` float DEFAULT NULL,
  `pitch` float DEFAULT NULL,
  `orientation` int DEFAULT NULL,
  `horizontal_view_angle` float DEFAULT NULL,
  `vertical_view_angle` float DEFAULT NULL,
  `accuracy` float DEFAULT NULL,
  `device_manufacture` varchar(255) DEFAULT NULL,
  `device_model` varchar(255) DEFAULT NULL,
  `device_platform` varchar(255) DEFAULT NULL,
  `device_version` varchar(255) DEFAULT NULL,
  `sats_info` text,
  `extra_sat_count` int DEFAULT NULL,
  `nmea_msg` text,
  `nmea_location` text,
  `nmea_distance` float DEFAULT NULL,
  `network_info` text,
  `network_location` text,
  `distance` float DEFAULT NULL,
  `flg_checked_location` int DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `timestamp` datetime NOT NULL,
  `digest` varchar(255) DEFAULT NULL,
  `flg_original` int DEFAULT NULL,
  `rotation_correction` int NOT NULL DEFAULT '0',
  `flg_deleted` int DEFAULT '0',
  `efkLatGpsL1` float DEFAULT NULL,
  `efkLngGpsL1` float DEFAULT NULL,
  `efkAltGpsL1` float DEFAULT NULL,
  `efkTimeGpsL1` datetime DEFAULT NULL,
  `efkLatGpsL5` float DEFAULT NULL,
  `efkLngGpsL5` float DEFAULT NULL,
  `efkAltGpsL5` float DEFAULT NULL,
  `efkTimeGpsL5` datetime DEFAULT NULL,
  `efkLatGpsIf` float DEFAULT NULL,
  `efkLngGpsIf` float DEFAULT NULL,
  `efkAltGpsIf` float DEFAULT NULL,
  `efkTimeGpsIf` datetime DEFAULT NULL,
  `efkLatGalE1` float DEFAULT NULL,
  `efkLngGalE1` float DEFAULT NULL,
  `efkAltGalE1` float DEFAULT NULL,
  `efkTimeGalE1` datetime DEFAULT NULL,
  `efkLatGalE5` float DEFAULT NULL,
  `efkLngGalE5` float DEFAULT NULL,
  `efkAltGalE5` float DEFAULT NULL,
  `efkTimeGalE5` datetime DEFAULT NULL,
  `efkLatGalIf` float DEFAULT NULL,
  `efkLngGalIf` float DEFAULT NULL,
  `efkAltGalIf` float DEFAULT NULL,
  `efkTimeGalIf` datetime DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `osnma_enabled` varchar(255) DEFAULT NULL,
  `osnma_validated` varchar(255) DEFAULT NULL,
  `validated_sats` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struttura della tabella `release_notes`
--

CREATE TABLE `release_notes` (
  `id` int NOT NULL,
  `type` enum('web','android','ios') NOT NULL,
  `version` varchar(255) DEFAULT NULL,
  `note_en` text,
  `note_cz` text,
  `note_it` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struttura della tabella `role`
--

CREATE TABLE `role` (
  `id` bigint NOT NULL,
  `role` varchar(255) NOT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dump dei dati per la tabella `role`
--

INSERT INTO `role` (`id`, `role`, `description`, `timestamp`) VALUES
(1, 'FARMER', 'FARMER', '2021-05-05 14:50:09'),
(2, 'OFFICER', 'OFFICER', '2021-05-05 14:50:09'),
(3, 'SUPERADMIN', 'SUPERADMIN', '2021-05-05 14:50:09');

-- --------------------------------------------------------

--
-- Struttura della tabella `status_sortorder`
--

CREATE TABLE `status_sortorder` (
  `status` varchar(45) NOT NULL,
  `sortorder` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struttura della tabella `task`
--

CREATE TABLE `task` (
  `id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `created_id` bigint NOT NULL,
  `type_id` bigint DEFAULT NULL,
  `status` enum('new','open','returned','data provided','data checked','closed') NOT NULL DEFAULT 'new',
  `name` varchar(255) DEFAULT NULL,
  `text` text,
  `text_returned` text,
  `text_reason` text,
  `date_created` datetime DEFAULT NULL,
  `task_due_date` datetime DEFAULT NULL,
  `note` text,
  `timestamp` datetime NOT NULL,
  `flg_deleted` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- --------------------------------------------------------

--
-- Struttura della tabella `task_flag`
--

CREATE TABLE `task_flag` (
  `id` bigint NOT NULL,
  `task_id` bigint NOT NULL,
  `flag_id` bigint NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struttura della tabella `task_type`
--

CREATE TABLE `task_type` (
  `id` bigint NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dump dei dati per la tabella `task_type`
--

INSERT INTO `task_type` (`id`, `name`, `description`) VALUES
(8, 'test task', 'test task type');

-- --------------------------------------------------------

--
-- Struttura della tabella `user`
--

CREATE TABLE `user` (
  `id` bigint NOT NULL,
  `pa_id` bigint NOT NULL,
  `login` varchar(255) NOT NULL,
  `pswd` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `identification_number` int DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `vat` varchar(45) DEFAULT NULL,
  `timestamp` datetime NOT NULL,
  `active` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dump dei dati per la tabella `user`
--

INSERT INTO `user` (`id`, `pa_id`, `login`, `pswd`, `name`, `surname`, `identification_number`, `email`, `vat`, `timestamp`, `active`) VALUES
(1, 1, 'admin', '2a05f9937782b7cc018c1ab1861c1b220f0f44f1', NULL, NULL, NULL, NULL, NULL, '2021-05-05 14:51:18', 1),
(2, 2, 'officer', 'a9c81e59ab523b663c85532273a6eb7b13b10151', 'Officer', 'Officer', NULL, '', '', '2021-05-05 14:55:24', 1),
(3, 2, 'farmer', '34f17213e0d49e7d5aee18e7419301e88ecdcc43', 'farmer', 'farmer', NULL, 'farmer@farmer.mock', '', '2021-05-05 14:55:53', 1),
(4, 2, 'demo', '89e495e7941cf9e40e6980d14a16bf023ccd4c91', 'demo', 'demo', NULL, 'demo@demo.mock', '', '2021-05-05 14:55:53', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `user_role`
--

CREATE TABLE `user_role` (
  `id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dump dei dati per la tabella `user_role`
--

INSERT INTO `user_role` (`id`, `user_id`, `role_id`, `timestamp`) VALUES
(1, 1, 3, '2021-05-05 14:51:50'),
(2, 2, 2, '2021-05-05 14:55:24'),
(3, 3, 1, '2021-05-05 14:55:53'),
(4, 4, 1, '2021-05-05 14:55:53');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `comm_log`
--
ALTER TABLE `comm_log`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `land`
--
ALTER TABLE `land`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_minmax` (`wgs_max_lat`,`wgs_min_lat`,`wgs_max_lng`,`wgs_min_lng`);

--
-- Indici per le tabelle `pa`
--
ALTER TABLE `pa`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `page_lang`
--
ALTER TABLE `page_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id_idx` (`page_id`);

--
-- Indici per le tabelle `path`
--
ALTER TABLE `path`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_id_idx` (`user_id`);

--
-- Indici per le tabelle `path_point`
--
ALTER TABLE `path_point`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_path_id_idx` (`path_id`);

--
-- Indici per le tabelle `pa_flag`
--
ALTER TABLE `pa_flag`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_task_id` (`task_id`),
  ADD KEY `idx_digest` (`digest`);

--
-- Indici per le tabelle `release_notes`
--
ALTER TABLE `release_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `status_sortorder`
--
ALTER TABLE `status_sortorder`
  ADD PRIMARY KEY (`status`),
  ADD UNIQUE KEY `status_UNIQUE` (`status`);

--
-- Indici per le tabelle `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_id_idx` (`user_id`),
  ADD KEY `fk_uid_created_idx` (`created_id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `fk_ta_type_idx` (`type_id`);

--
-- Indici per le tabelle `task_flag`
--
ALTER TABLE `task_flag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_task_id_idx` (`task_id`),
  ADD KEY `fk_flag_id_idx` (`flag_id`);

--
-- Indici per le tabelle `task_type`
--
ALTER TABLE `task_type`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pa_idx` (`pa_id`);

--
-- Indici per le tabelle `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_idx` (`user_id`),
  ADD KEY `fk_role_idx` (`role_id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `comm_log`
--
ALTER TABLE `comm_log`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3404;

--
-- AUTO_INCREMENT per la tabella `land`
--
ALTER TABLE `land`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=627847;

--
-- AUTO_INCREMENT per la tabella `pa`
--
ALTER TABLE `pa`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT per la tabella `page_lang`
--
ALTER TABLE `page_lang`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=319;

--
-- AUTO_INCREMENT per la tabella `path`
--
ALTER TABLE `path`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=312;

--
-- AUTO_INCREMENT per la tabella `path_point`
--
ALTER TABLE `path_point`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29603;

--
-- AUTO_INCREMENT per la tabella `pa_flag`
--
ALTER TABLE `pa_flag`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `photo`
--
ALTER TABLE `photo`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17804;

--
-- AUTO_INCREMENT per la tabella `release_notes`
--
ALTER TABLE `release_notes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT per la tabella `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `task`
--
ALTER TABLE `task`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125898;

--
-- AUTO_INCREMENT per la tabella `task_flag`
--
ALTER TABLE `task_flag`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5700;

--
-- AUTO_INCREMENT per la tabella `task_type`
--
ALTER TABLE `task_type`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT per la tabella `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT per la tabella `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `page_lang`
--
ALTER TABLE `page_lang`
  ADD CONSTRAINT `page_id` FOREIGN KEY (`page_id`) REFERENCES `page` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `path`
--
ALTER TABLE `path`
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Limiti per la tabella `path_point`
--
ALTER TABLE `path_point`
  ADD CONSTRAINT `fk_path_id` FOREIGN KEY (`path_id`) REFERENCES `path` (`id`) ON DELETE CASCADE;

--
-- Limiti per la tabella `task`
--
ALTER TABLE `task`
  ADD CONSTRAINT `fk_ta_created` FOREIGN KEY (`created_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `fk_ta_type` FOREIGN KEY (`type_id`) REFERENCES `task_type` (`id`),
  ADD CONSTRAINT `fk_ta_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Limiti per la tabella `task_flag`
--
ALTER TABLE `task_flag`
  ADD CONSTRAINT `fk_tf_flag` FOREIGN KEY (`flag_id`) REFERENCES `pa_flag` (`id`),
  ADD CONSTRAINT `fk_tf_task` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`) ON DELETE CASCADE;

--
-- Limiti per la tabella `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_pa` FOREIGN KEY (`pa_id`) REFERENCES `pa` (`id`);

--
-- Limiti per la tabella `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `fk_ur_role` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  ADD CONSTRAINT `fk_ur_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
