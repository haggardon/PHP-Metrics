-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- �������: localhost
-- ������ �����������: 01 ��� 2013, ���� 07:28 PM
-- ������ ����������: 5.5.8
-- ������ PHP: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- ����: `php_metrics`
--

-- --------------------------------------------------------

--
-- ���� ������ ��� ��� ������ `classes`
--

CREATE TABLE IF NOT EXISTS `classes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ca` varchar(60) DEFAULT NULL,
  `cbo` varchar(60) DEFAULT NULL,
  `ce` varchar(60) DEFAULT NULL,
  `cis` varchar(60) DEFAULT NULL,
  `cloc` varchar(60) DEFAULT NULL,
  `cr` varchar(60) DEFAULT NULL,
  `csz` varchar(60) DEFAULT NULL,
  `dit` varchar(60) DEFAULT NULL,
  `eloc` varchar(60) DEFAULT NULL,
  `impl` varchar(60) DEFAULT NULL,
  `lloc` varchar(60) DEFAULT NULL,
  `loc` varchar(60) DEFAULT NULL,
  `ncloc` varchar(60) DEFAULT NULL,
  `noam` varchar(60) DEFAULT NULL,
  `nocc` varchar(60) DEFAULT NULL,
  `nom` varchar(60) DEFAULT NULL,
  `noom` varchar(60) DEFAULT NULL,
  `npm` varchar(60) DEFAULT NULL,
  `rcr` varchar(60) DEFAULT NULL,
  `vars` varchar(60) DEFAULT NULL,
  `varsi` varchar(60) DEFAULT NULL,
  `varsnp` varchar(60) DEFAULT NULL,
  `wmc` varchar(60) DEFAULT NULL,
  `wmci` varchar(60) DEFAULT NULL,
  `wmcnp` varchar(60) DEFAULT NULL,
  `name` varchar(60) NOT NULL,
  `file_id` int(60) NOT NULL,
  `nr_of_methods` int(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- '�������� ��������� ��� ������ `classes`
--


-- --------------------------------------------------------

--
-- ���� ������ ��� ��� ������ `files`
--

CREATE TABLE IF NOT EXISTS `files` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(60) NOT NULL,
  `full_path` varchar(160) NOT NULL,
  `cloc` varchar(60) NOT NULL,
  `eloc` varchar(60) NOT NULL,
  `lloc` varchar(60) NOT NULL,
  `loc` varchar(60) NOT NULL,
  `ncloc` varchar(60) NOT NULL,
  `package_id` int(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- '�������� ��������� ��� ������ `files`
--


-- --------------------------------------------------------

--
-- ���� ������ ��� ��� ������ `methods`
--

CREATE TABLE IF NOT EXISTS `methods` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `ccn` varchar(60) DEFAULT NULL,
  `ccn2` varchar(60) DEFAULT NULL,
  `cloc` varchar(60) DEFAULT NULL,
  `eloc` varchar(60) DEFAULT NULL,
  `lloc` varchar(60) DEFAULT NULL,
  `loc` varchar(60) DEFAULT NULL,
  `ncloc` varchar(60) DEFAULT NULL,
  `npath` varchar(60) DEFAULT NULL,
  `class_id` int(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- '�������� ��������� ��� ������ `methods`
--


-- --------------------------------------------------------

--
-- ���� ������ ��� ��� ������ `packages`
--

CREATE TABLE IF NOT EXISTS `packages` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `package_name` varchar(60) NOT NULL,
  `cr` varchar(60) NOT NULL,
  `noc` varchar(60) NOT NULL,
  `nof` varchar(60) NOT NULL,
  `noi` varchar(60) NOT NULL,
  `nom` varchar(60) NOT NULL,
  `rcr` varchar(60) NOT NULL,
  `project_id` varchar(60) NOT NULL,
  `nr_of_files` int(60) NOT NULL,
  `nr_of_classes` int(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- '�������� ��������� ��� ������ `packages`
--


-- --------------------------------------------------------

--
-- ���� ������ ��� ��� ������ `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
  `id` int(160) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(160) NOT NULL,
  `ahh` varchar(160) NOT NULL,
  `andc` varchar(160) NOT NULL,
  `calls` varchar(160) NOT NULL,
  `ccn` varchar(160) NOT NULL,
  `ccn2` varchar(160) NOT NULL,
  `cloc` varchar(160) NOT NULL,
  `clsa` varchar(160) NOT NULL,
  `clsc` varchar(160) NOT NULL,
  `eloc` varchar(160) NOT NULL,
  `fanout` varchar(160) NOT NULL,
  `leafs` varchar(160) NOT NULL,
  `lloc` varchar(160) NOT NULL,
  `loc` varchar(160) NOT NULL,
  `maxDIT` varchar(160) NOT NULL,
  `ncloc` varchar(160) NOT NULL,
  `noc` varchar(160) NOT NULL,
  `nof` varchar(160) NOT NULL,
  `noi` varchar(160) NOT NULL,
  `nom` varchar(160) NOT NULL,
  `nop` varchar(160) NOT NULL,
  `roots` varchar(160) NOT NULL,
  `nr_of_files` varchar(160) NOT NULL,
  `nr_of_packages` int(160) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- '�������� ��������� ��� ������ `projects`
--