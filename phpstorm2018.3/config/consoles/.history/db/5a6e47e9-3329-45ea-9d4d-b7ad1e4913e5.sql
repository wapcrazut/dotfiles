SELECT count(l.id)
FROM leadbox_lead_es.lead l
  INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
  LEFT JOIN lead_filter lf ON lf.id = 1
WHERE l.campaign_id = 1
  AND lf.is_coregistry = 0;
;-- -. . -..- - / . -. - .-. -.--
SELECT l.id, sl.id
FROM leadbox_lead_es.lead l
  INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id
  INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.customer_id = ac.customer_id AND sl.status = 1
  LEFT JOIN lead_filter lf ON lf.id = 1 AND lf.is_coregistry = 1
WHERE l.campaign_id = 1;
;-- -. . -..- - / . -. - .-. -.--
SELECT l.id, sl.id
FROM leadbox_lead_es.lead l
  INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id
  INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.customer_id = ac.customer_id AND sl.status = 1
  LEFT JOIN lead_filter lf ON lf.id = 1 
WHERE l.campaign_id = 1
  AND lf.is_coregistry = 1;
;-- -. . -..- - / . -. - .-. -.--
SELECT l.id, sl.id
FROM leadbox_lead_es.lead l
  INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
  LEFT JOIN lead_filter lf ON lf.id = 1
WHERE l.campaign_id = 1
  AND lf.is_coregistry = 0;
;-- -. . -..- - / . -. - .-. -.--
SELECT l.id, sl.id
FROM leadbox_lead_es.lead l
  INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id
  INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.customer_id = ac.customer_id AND sl.status = 1
  LEFT JOIN lead_filter lf ON lf.id = 1
WHERE l.campaign_id = 1
  AND lf.is_coregistry = 1;
;-- -. . -..- - / . -. - .-. -.--
SELECT count(l.id)
FROM leadbox_lead_es.lead l
  INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id
  INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.customer_id = ac.customer_id AND sl.status = 1
  LEFT JOIN action_execution ae ON sl.action_id
  LEFT JOIN lead_filter lf ON lf.id = ae.filter_id
WHERE l.campaign_id = cam.id
  AND lf.is_coregistry = 1;
;-- -. . -..- - / . -. - .-. -.--
SELECT count(l.id)
FROM leadbox_lead_es.lead l
  INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id
  INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.customer_id = ac.customer_id AND sl.status = 1
  LEFT JOIN action_execution ae ON sl.action_id
  LEFT JOIN lead_filter lf ON lf.id = ae.filter_id
WHERE l.campaign_id = 1
  AND lf.is_coregistry = 0;
;-- -. . -..- - / . -. - .-. -.--
SELECT count(l.id)
FROM leadbox_lead_es.lead l
  INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id
  INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.customer_id = ac.customer_id AND sl.status = 1
  LEFT JOIN action_execution ae ON sl.action_id
  LEFT JOIN lead_filter lf ON lf.id = ae.filter_id
WHERE l.campaign_id = 1
  AND lf.is_coregistry = 1;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT count(l.id)
FROM leadbox_lead_es.lead l
  INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id
  INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.customer_id = ac.customer_id AND sl.status = 1
  LEFT JOIN action_execution ae ON sl.action_id
  LEFT JOIN lead_filter lf ON lf.id = ae.filter_id
WHERE l.campaign_id = 1
  AND lf.is_coregistry = 1;
;-- -. . -..- - / . -. - .-. -.--
SELECT count(l.id)
FROM leadbox_lead_es.lead l
  INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id
  INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.customer_id = ac.customer_id AND sl.status = 1
  INNER JOIN action_execution ae ON sl.action_id
  INNER JOIN lead_filter lf ON lf.id = ae.filter_id
WHERE l.campaign_id = 1
  AND lf.is_coregistry = 1;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT count(l.id)
FROM leadbox_lead_es.lead l
  INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id
  INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.customer_id = ac.customer_id AND sl.status = 1
  INNER JOIN action_execution ae ON sl.action_id
  INNER JOIN lead_filter lf ON lf.id = ae.filter_id
WHERE l.campaign_id = 1
  AND lf.is_coregistry = 1;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT count(l.id), l.id, sl.id, lf.id
FROM leadbox_lead_es.lead l
  INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id
  INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.customer_id = ac.customer_id AND sl.status = 1
  INNER JOIN action_execution ae ON sl.action_id
  INNER JOIN lead_filter lf ON lf.id = ae.filter_id
WHERE l.campaign_id = 1
  AND lf.is_coregistry = 1;
;-- -. . -..- - / . -. - .-. -.--
SELECT  l.id, sl.id, lf.id
FROM leadbox_lead_es.lead l
  INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id
  INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.customer_id = ac.customer_id AND sl.status = 1
  INNER JOIN action_execution ae ON sl.action_id
  INNER JOIN lead_filter lf ON lf.id = ae.filter_id
WHERE l.campaign_id = 1
  AND lf.is_coregistry = 1;
;-- -. . -..- - / . -. - .-. -.--
DISTINCT;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT l.id, sl.id, lf.id
FROM leadbox_lead_es.lead l
  INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id
  INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.customer_id = ac.customer_id AND sl.status = 1
  INNER JOIN action_execution ae ON sl.action_id
  INNER JOIN lead_filter lf ON lf.id = ae.filter_id
WHERE l.campaign_id = 1
  AND lf.is_coregistry = 1;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT l.id, sl.id, lf.id, sl.customer_id
FROM leadbox_lead_es.lead l
  INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id
  INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.customer_id = ac.customer_id AND sl.status = 1
  INNER JOIN action_execution ae ON sl.action_id
  INNER JOIN lead_filter lf ON lf.id = ae.filter_id
WHERE l.campaign_id = 1
  AND lf.is_coregistry = 1;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT l.id, sl.lead_id, lf.id, sl.customer_id
FROM leadbox_lead_es.lead l
  INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id
  INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.customer_id = ac.customer_id AND sl.status = 1
  INNER JOIN action_execution ae ON sl.action_id
  INNER JOIN lead_filter lf ON lf.id = ae.filter_id
WHERE l.campaign_id = 1
  AND lf.is_coregistry = 1;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT l.id, sl.id sl.lead_id, lf.id, sl.customer_id
FROM leadbox_lead_es.lead l
  INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id
  INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.customer_id = ac.customer_id AND sl.status = 1
  INNER JOIN action_execution ae ON sl.action_id
  INNER JOIN lead_filter lf ON lf.id = ae.filter_id
WHERE l.campaign_id = 1
  AND lf.is_coregistry = 1;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT l.id, sl.id s, .lead_id, lf.id, sl.customer_id
FROM leadbox_lead_es.lead l
  INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id
  INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.customer_id = ac.customer_id AND sl.status = 1
  INNER JOIN action_execution ae ON sl.action_id
  INNER JOIN lead_filter lf ON lf.id = ae.filter_id
WHERE l.campaign_id = 1
  AND lf.is_coregistry = 1;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT l.id, sl.id, sl.lead_id, lf.id, sl.customer_id
FROM leadbox_lead_es.lead l
  INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id
  INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.customer_id = ac.customer_id AND sl.status = 1
  INNER JOIN action_execution ae ON sl.action_id
  INNER JOIN lead_filter lf ON lf.id = ae.filter_id
WHERE l.campaign_id = 1
  AND lf.is_coregistry = 1;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       cam.id as id_campaign,
       org.id as id_origin,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       lf.is_coregistry as is_coregistry,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
       ) as totalLeads,
       (SELECT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.customer_id = ac.customer_id AND sl.status = 1
          LEFT JOIN action_execution ae ON sl.action_id
          LEFT JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND lf.is_coregistry = 1
       ) as totalLeadsCorregistry,
       (SELECT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          LEFT JOIN action_execution ae ON sl.action_id
          LEFT JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND lf.is_coregistry = 0
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id
  INNER JOIN lead_filter lf
  ON lfcc.lead_filter_id = lf.id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
GROUP BY cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country, cr.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       cam.id as id_campaign,
       org.id as id_origin,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       lf.is_coregistry as is_coregistry,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN "' . $start. '" AND "' . $end. '"
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN "' . $start. '" AND "' . $end. '"
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN "' . $start. '" AND "' . $end. '"
       ) as totalLeads,
       (SELECT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.customer_id = ac.customer_id AND sl.status = 1
          LEFT JOIN action_execution ae ON sl.action_id
          LEFT JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN "' . $start. '" AND "' . $end. '"
       ) as totalLeadsCorregistry,
       (SELECT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          LEFT JOIN action_execution ae ON sl.action_id
          LEFT JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN "' . $start. '" AND "' . $end. '"
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN "' . $start. '" AND "' . $end. '"
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id
  INNER JOIN lead_filter lf
  ON lfcc.lead_filter_id = lf.id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN "' . $start. '" AND "' . $end. '"
GROUP BY cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country, cr.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       cam.id as id_campaign,
       org.id as id_origin,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       lf.is_coregistry as is_coregistry,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '01-05-2018 12:00:00' AND '30-05-2018 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '01-05-2018 12:00:00' AND '30-05-2018 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '01-05-2018 12:00:00' AND '30-05-2018 12:00:00'
       ) as totalLeads,
       (SELECT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.customer_id = ac.customer_id AND sl.status = 1
          LEFT JOIN action_execution ae ON sl.action_id
          LEFT JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '01-05-2018 12:00:00' AND '30-05-2018 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          LEFT JOIN action_execution ae ON sl.action_id
          LEFT JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '01-05-2018 12:00:00' AND '30-05-2018 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '01-05-2018 12:00:00' AND '30-05-2018 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id
  INNER JOIN lead_filter lf
  ON lfcc.lead_filter_id = lf.id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '01-05-2018 12:00:00' AND '30-05-2018 12:00:00'
GROUP BY cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country, cr.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       cam.id as id_campaign,
       org.id as id_origin,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       lf.is_coregistry as is_coregistry,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '01-05-2019 12:00:00' AND '30-05-2019 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '01-05-2019 12:00:00' AND '30-05-2019 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '01-05-2019 12:00:00' AND '30-05-2019 12:00:00'
       ) as totalLeads,
       (SELECT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.customer_id = ac.customer_id AND sl.status = 1
          LEFT JOIN action_execution ae ON sl.action_id
          LEFT JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '01-05-2019 12:00:00' AND '30-05-2019 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          LEFT JOIN action_execution ae ON sl.action_id
          LEFT JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '01-05-2019 12:00:00' AND '30-05-2019 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '01-05-2019 12:00:00' AND '30-05-2019 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id
  INNER JOIN lead_filter lf
  ON lfcc.lead_filter_id = lf.id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '01-05-2019 12:00:00' AND '30-05-2019 12:00:00'
GROUP BY cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country, cr.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       cam.id as id_campaign,
       org.id as id_origin,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       lf.is_coregistry as is_coregistry,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.customer_id = ac.customer_id AND sl.status = 1
          LEFT JOIN action_execution ae ON sl.action_id
          LEFT JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          LEFT JOIN action_execution ae ON sl.action_id
          LEFT JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id
  INNER JOIN lead_filter lf
  ON lfcc.lead_filter_id = lf.id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country, cr.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       cam.id as id_campaign,
       org.id as id_origin,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       lf.is_coregistry as is_coregistry,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.customer_id = ac.customer_id AND sl.status = 1
          LEFT JOIN action_execution ae ON sl.action_id
          LEFT JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          LEFT JOIN action_execution ae ON sl.action_id
          LEFT JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id
  INNER JOIN lead_filter lf
  ON lfcc.lead_filter_id = lf.id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country, cr.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       cam.id as id_campaign,
       org.id as id_origin,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       lf.is_coregistry as is_coregistry,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT  l.id
        FROM leadbox_lead_es.lead l
          INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.customer_id = ac.customer_id AND sl.status = 1
          LEFT JOIN action_execution ae ON sl.action_id
          LEFT JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          LEFT JOIN action_execution ae ON sl.action_id
          LEFT JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id
  INNER JOIN lead_filter lf
  ON lfcc.lead_filter_id = lf.id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country, cr.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       cam.id as id_campaign,
       org.id as id_origin,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       lf.is_coregistry as is_coregistry,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT  count(sl.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.customer_id = ac.customer_id AND sl.status = 1
          LEFT JOIN action_execution ae ON sl.action_id
          LEFT JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          LEFT JOIN action_execution ae ON sl.action_id
          LEFT JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id
  INNER JOIN lead_filter lf
  ON lfcc.lead_filter_id = lf.id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country, cr.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       cam.id as id_campaign,
       org.id as id_origin,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       lf.is_coregistry as is_coregistry,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT  count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.customer_id = ac.customer_id AND sl.status = 1
          LEFT JOIN action_execution ae ON sl.action_id
          LEFT JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          LEFT JOIN action_execution ae ON sl.action_id
          LEFT JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id
  INNER JOIN lead_filter lf
  ON lfcc.lead_filter_id = lf.id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country, cr.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       cam.id as id_campaign,
       org.id as id_origin,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       lf.is_coregistry as is_coregistry,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT  count(l.id)
        FROM sending_log.lead_id sl
          INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = sl.lead_id 
          LEFT JOIN action_execution ae ON sl.action_id
          LEFT JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          LEFT JOIN action_execution ae ON sl.action_id
          LEFT JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id
  INNER JOIN lead_filter lf
  ON lfcc.lead_filter_id = lf.id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country, cr.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       cam.id as id_campaign,
       org.id as id_origin,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       lf.is_coregistry as is_coregistry,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT  count(l.id)
        FROM sending_log sl
          INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = sl.lead_id
          LEFT JOIN action_execution ae ON sl.action_id
          LEFT JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          LEFT JOIN action_execution ae ON sl.action_id
          LEFT JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id
  INNER JOIN lead_filter lf
  ON lfcc.lead_filter_id = lf.id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country, cr.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       cam.id as id_campaign,
       org.id as id_origin,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       lf.is_coregistry as is_coregistry,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT  count(sl.id)
        FROM sending_log sl
          INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = sl.lead_id
          LEFT JOIN action_execution ae ON sl.action_id
          LEFT JOIN sending_configuration sc ON sl.sending_configuration_id
          LEFT JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE sc.customer_id = cam.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          LEFT JOIN action_execution ae ON sl.action_id
          LEFT JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id
  INNER JOIN lead_filter lf
  ON lfcc.lead_filter_id = lf.id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country, cr.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       cam.id as id_campaign,
       org.id as id_origin,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       lf.is_coregistry as is_coregistry,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT  count(sl.id)
        FROM sending_log sl
          INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = sl.lead_id
          LEFT JOIN action_execution ae ON sl.action_id
          LEFT JOIN sending_configuration sc ON sl.sending_configuration_id
          LEFT JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE sc.customer_id = cam.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          LEFT JOIN action_execution ae ON sl.action_id
          LEFT JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id
  INNER JOIN lead_filter lf
  ON lfcc.lead_filter_id = lf.id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country, cr.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       cam.id as id_campaign,
       org.id as id_origin,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       lf.is_coregistry as is_coregistry,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(sl.id)
        FROM sending_log sl
          INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = sl.lead_id
          INNER JOIN action_execution ae ON sl.action_id
          INNER JOIN sending_configuration sc ON sl.sending_configuration_id
          INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE sc.customer_id = cam.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          LEFT JOIN action_execution ae ON sl.action_id
          LEFT JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id
  INNER JOIN lead_filter lf
  ON lfcc.lead_filter_id = lf.id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country, cr.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT  count(sl.id)
FROM sending_log sl
       INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = sl.lead_id
       INNER JOIN action_execution ae ON sl.action_id
       INNER JOIN sending_configuration sc ON sl.sending_configuration_id
       INNER JOIN lead_filter lf ON lf.id = ae.filter_id
WHERE sc.customer_id = cam.id
  AND sl.status = 1
  AND lf.is_coregistry = 1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00';
;-- -. . -..- - / . -. - .-. -.--
SELECT  count(sl.id)
FROM sending_log sl
       INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = sl.lead_id
       INNER JOIN action_execution ae ON sl.action_id
       INNER JOIN sending_configuration sc ON sl.sending_configuration_id
       INNER JOIN lead_filter lf ON lf.id = ae.filter_id
WHERE sc.customer_id = 1
  AND sl.status = 1
  AND lf.is_coregistry = 1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00';
;-- -. . -..- - / . -. - .-. -.--
SELECT  count(sl.id)
FROM sending_log sl
       INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = sl.lead_id
       INNER JOIN action_execution ae ON sl.action_id
       INNER JOIN sending_configuration sc ON sl.sending_configuration_id
       INNER JOIN lead_filter lf ON lf.id = ae.filter_id
WHERE sc.customer_id = 1
  AND lf.is_coregistry = 1
  AND sl.status = 1
  AND sl.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00';
;-- -. . -..- - / . -. - .-. -.--
SELECT  sl.id, sl.lead_id, ac.customer_id, ac.lead_id
FROM sending_log sl
       INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = sl.lead_id
       INNER JOIN action_execution ae ON sl.action_id
       INNER JOIN sending_configuration sc ON sl.sending_configuration_id
       INNER JOIN lead_filter lf ON lf.id = ae.filter_id
WHERE sc.customer_id = 1
  AND lf.is_coregistry = 1
  AND sl.status = 1
  AND sl.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00';
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT sl.id, sl.lead_id, ac.customer_id, ac.lead_id, lf.id, lf.is_coregistry
FROM sending_log sl
       INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = sl.lead_id
       INNER JOIN action_execution ae ON sl.action_id
       INNER JOIN sending_configuration sc ON sl.sending_configuration_id
       INNER JOIN lead_filter lf ON lf.id = ae.filter_id
WHERE sc.customer_id = 1
  AND lf.is_coregistry = 1
  AND sl.status = 1
  AND sl.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00';
;-- -. . -..- - / . -. - .-. -.--
SELECT  sl.id, sl.lead_id, ac.customer_id, ac.lead_id, lf.id, lf.is_coregistry
FROM sending_log sl
       INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = sl.lead_id
       INNER JOIN action_execution ae ON sl.action_id
       INNER JOIN sending_configuration sc ON sl.sending_configuration_id
       INNER JOIN lead_filter lf ON lf.id = ae.filter_id
WHERE sc.customer_id = 1
  AND lf.is_coregistry = 1
  AND sl.status = 1
  AND sl.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00';
;-- -. . -..- - / . -. - .-. -.--
SELECT  sl.id, sl.lead_id, ac.customer_id, ac.lead_id, lf.id, lf.is_coregistry
FROM sending_log sl
       INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = sl.lead_id
WHERE
   sl.status = 1
  AND sl.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00';
;-- -. . -..- - / . -. - .-. -.--
SELECT  sl.id, sl.lead_id, ac.customer_id, ac.lead_id
FROM sending_log sl
       INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = sl.lead_id
WHERE
   sl.status = 1
  AND sl.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00';
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT sl.id, sl.lead_id, ac.customer_id, ac.lead_id
FROM sending_log sl
       INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = sl.lead_id
WHERE
   sl.status = 1
  AND sl.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00';
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT sl.id, sl.lead_id, ac.customer_id
FROM sending_log sl
       INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = sl.lead_id
WHERE
   sl.status = 1
  AND sl.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00';
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT sl.id, sl.lead_id, ac.customer_id
FROM sending_log sl
       INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = sl.lead_id
WHERE
   sl.status = 1
  AND sl.sending_configuration_id = 1
  AND sl.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00';
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT sl.id, sl.lead_id, ac.customer_id, sl.action_id
FROM sending_log sl
       INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = sl.lead_id
INNER JOIN lead_filter_customer_campaign lfcc ON sl.sending_configuration_id = lfcc.sending_configuration_id
WHERE
   sl.status = 1
  AND sl.sending_configuration_id
  AND sl.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00';
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT sl.id, sl.lead_id, ac.customer_id, lfcc.customer_id, sl.customer_id
FROM sending_log sl
       INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = sl.lead_id
INNER JOIN lead_filter_customer_campaign lfcc ON sl.sending_configuration_id = lfcc.sending_configuration_id
WHERE
   sl.status = 1
  AND sl.sending_configuration_id
  AND sl.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00';
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT sl.id, sl.lead_id, ac.customer_id, lfcc.customer_id, sl.customer_id
FROM sending_log sl
       INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = sl.lead_id
INNER JOIN lead_filter_customer_campaign lfcc ON sl.sending_configuration_id = lfcc.sending_configuration_id
WHERE
   sl.status = 1
  AND sl.sending_configuration_id = lfcc.sending_configuration_id
  AND sl.created_at BETWEEN x AND '2019-05-30 12:00:00';
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT sl.id, sl.lead_id, ac.customer_id, lfcc.customer_id, sl.customer_id
FROM sending_log sl
       INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = sl.lead_id
INNER JOIN lead_filter_customer_campaign lfcc ON sl.sending_configuration_id = lfcc.sending_configuration_id
WHERE
   sl.status = 1
  AND sl.sending_configuration_id = lfcc.sending_configuration_id
  AND sl.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00';
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT sl.id, sl.lead_id, ac.customer_id, lfcc.customer_id, sl.customer_id
FROM sending_log sl
INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = sl.lead_id
INNER JOIN lead_filter_customer_campaign lfcc ON sl.sending_configuration_id = lfcc.sending_configuration_id
WHERE
sl.status = 1
AND sl.sending_configuration_id = lfcc.sending_configuration_id
AND sl.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY sl.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT sl.id, sl.lead_id, lfcc.customer_id, sl.customer_id
FROM sending_log sl
INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = sl.lead_id
INNER JOIN lead_filter_customer_campaign lfcc ON sl.sending_configuration_id = lfcc.sending_configuration_id
WHERE
sl.status = 1
AND sl.sending_configuration_id = lfcc.sending_configuration_id
AND sl.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY sl.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT sl.id, sl.lead_id, lfcc.customer_id, sl.customer_id
FROM sending_log sl
INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = sl.lead_id
INNER JOIN lead_filter_customer_campaign lfcc ON sl.sending_configuration_id = lfcc.sending_configuration_id
WHERE
sl.status = 1
AND sl.sending_configuration_id = lfcc.sending_configuration_id
AND sl.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
AND count(ac.lead_id) > 0
GROUP BY sl.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT sl.id, sl.lead_id, lfcc.customer_id, sl.customer_id
FROM sending_log sl
INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = sl.lead_id
INNER JOIN lead_filter_customer_campaign lfcc ON sl.sending_configuration_id = lfcc.sending_configuration_id
WHERE
sl.status = 1
AND sl.sending_configuration_id = lfcc.sending_configuration_id
AND sl.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
AND count(ac.lead_id) > 0;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT sl.id, sl.lead_id, lfcc.customer_id, sl.customer_id
FROM sending_log sl
INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = sl.lead_id
INNER JOIN lead_filter_customer_campaign lfcc ON sl.sending_configuration_id = lfcc.sending_configuration_id
WHERE sl.status = 1
AND sl.sending_configuration_id = lfcc.sending_configuration_id
AND sl.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
AND ac > 0;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT sl.id, sl.lead_id, count(ac.lead_id) as t, lfcc.customer_id, sl.customer_id
FROM sending_log sl
INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = sl.lead_id
INNER JOIN lead_filter_customer_campaign lfcc ON sl.sending_configuration_id = lfcc.sending_configuration_id
WHERE sl.status = 1
AND sl.sending_configuration_id = lfcc.sending_configuration_id
AND sl.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
AND t > 0;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT sl.id, sl.lead_id, count(ac.lead_id) as t, lfcc.customer_id, sl.customer_id
FROM sending_log sl
INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = sl.lead_id
INNER JOIN lead_filter_customer_campaign lfcc ON sl.sending_configuration_id = lfcc.sending_configuration_id
WHERE sl.status = 1
AND sl.sending_configuration_id = lfcc.sending_configuration_id
AND sl.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY sl.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT sl.id, sl.lead_id, lfcc.customer_id, sl.customer_id
FROM sending_log sl
INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = sl.lead_id
INNER JOIN lead_filter_customer_campaign lfcc ON sl.sending_configuration_id = lfcc.sending_configuration_id
WHERE sl.status = 1
AND sl.sending_configuration_id = lfcc.sending_configuration_id
AND sl.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY sl.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       cam.id as id_campaign,
       org.id as id_origin,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       lf.is_coregistry as is_coregistry,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT  count(sl.id)
        FROM sending_log sl
          INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = sl.lead_id
          INNER JOIN action_execution ae ON sl.action_id
          INNER JOIN sending_configuration sc ON sl.sending_configuration_id
          INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE sc.customer_id = cam.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          LEFT JOIN action_execution ae ON sl.action_id
          LEFT JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id
  INNER JOIN lead_filter lf
  ON lfcc.lead_filter_id = lf.id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country, cr.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       cam.id as id_campaign,
       org.id as id_origin,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       lf.is_coregistry as is_coregistry,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
               INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
               LEFT JOIN action_execution ae ON sl.action_id
               LEFT JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          LEFT JOIN action_execution ae ON sl.action_id
          LEFT JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id
  INNER JOIN lead_filter lf
  ON lfcc.lead_filter_id = lf.id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country, cr.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       cam.id as id_campaign,
       org.id as id_origin,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       lf.is_coregistry as is_coregistry,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
               INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
               LEFT JOIN action_execution ae ON sl.action_id
               LEFT JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          LEFT JOIN action_execution ae ON sl.action_id
          LEFT JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id
  INNER JOIN lead_filter lf
  ON lfcc.lead_filter_id = lf.id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country, cr.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       cam.id as id_campaign,
       org.id as id_origin,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       lf.is_coregistry as is_coregistry,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
         INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
         INNER JOIN action_execution ae ON sl.action_id
         INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
          GROUP BY lead.id
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          INNER JOIN action_execution ae ON sl.action_id
          INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
        GROUP BY lead.id
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id
  INNER JOIN lead_filter lf
  ON lfcc.lead_filter_id = lf.id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country, cr.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       cam.id as id_campaign,
       org.id as id_origin,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       lf.is_coregistry as is_coregistry,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
         INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
         INNER JOIN action_execution ae ON sl.action_id
         INNER JOIN lead_filter lf ON lf.id = ae.filter_id
         INNER JOIN sending_configuration sc on sl.sending_configuration_id = sc.id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND sc.customer_id = sl.customer_id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          INNER JOIN action_execution ae ON sl.action_id
          INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id
  INNER JOIN lead_filter lf
  ON lfcc.lead_filter_id = lf.id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country, cr.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       cam.id as id_campaign,
       org.id as id_origin,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       lf.is_coregistry as is_coregistry,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
         INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
         INNER JOIN action_execution ae ON sl.action_id
         INNER JOIN lead_filter lf ON lf.id = ae.filter_id
         INNER JOIN sending_configuration sc on sl.sending_configuration_id = sc.id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND sc.customer_id = sl.customer_id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          INNER JOIN action_execution ae ON sl.action_id
          INNER JOIN lead_filter lf ON lf.id = ae.filter_id
          INNER JOIN sending_configuration sc on sl.sending_configuration_id = sc.id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND sc.customer_id = sl.customer_id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id
  INNER JOIN lead_filter lf
  ON lfcc.lead_filter_id = lf.id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country, cr.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       cam.id as id_campaign,
       org.id as id_origin,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       lf.is_coregistry as is_coregistry,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
         INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
         INNER JOIN action_execution ae ON sl.action_id
         INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          INNER JOIN action_execution ae ON sl.action_id
          INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id
  INNER JOIN lead_filter lf
  ON lfcc.lead_filter_id = lf.id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country, cr.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       cam.id as id_campaign,
       org.id as id_origin,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       lf.is_coregistry as is_coregistry,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
         INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
         INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id
         INNER JOIN action_execution ae ON sl.action_id
         INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          INNER JOIN action_execution ae ON sl.action_id
          INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id
  INNER JOIN lead_filter lf
  ON lfcc.lead_filter_id = lf.id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country, cr.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       cam.id as id_campaign,
       org.id as id_origin,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       lf.is_coregistry as is_coregistry,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
         INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
         LEFT JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id
         INNER JOIN action_execution ae ON sl.action_id
         INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          INNER JOIN action_execution ae ON sl.action_id
          INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id
  INNER JOIN lead_filter lf
  ON lfcc.lead_filter_id = lf.id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country, cr.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       cam.id as id_campaign,
       org.id as id_origin,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       lf.is_coregistry as is_coregistry,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
         INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
         INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id
         INNER JOIN action_execution ae ON sl.action_id
         INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND ac.lead_id = l.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          INNER JOIN action_execution ae ON sl.action_id
          INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id
  INNER JOIN lead_filter lf
  ON lfcc.lead_filter_id = lf.id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country, cr.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       cam.id as id_campaign,
       org.id as id_origin,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       lf.is_coregistry as is_coregistry,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
         INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
         INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id and ac.customer_id = sl.customer_id
         INNER JOIN action_execution ae ON sl.action_id
         INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND ac.lead_id = l.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          INNER JOIN action_execution ae ON sl.action_id
          INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id
  INNER JOIN lead_filter lf
  ON lfcc.lead_filter_id = lf.id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country, cr.id;
;-- -. . -..- - / . -. - .-. -.--
INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id and ac.customer_id = sl.customer_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       cam.id as id_campaign,
       org.id as id_origin,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       lf.is_coregistry as is_coregistry,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
         INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
         INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id and ac.customer_id = sl.customer_id
         INNER JOIN action_execution ae ON sl.action_id
         INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          INNER JOIN action_execution ae ON sl.action_id
          INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id
  INNER JOIN lead_filter lf
  ON lfcc.lead_filter_id = lf.id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country, cr.id, is_coregistry;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       cam.id as id_campaign,
       org.id as id_origin,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       lf.is_coregistry as is_coregistry,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
         INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
         INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id and ac.customer_id = sl.customer_id
         INNER JOIN action_execution ae ON sl.action_id
         INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          INNER JOIN action_execution ae ON sl.action_id
          INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id
  INNER JOIN lead_filter lf
  ON lfcc.lead_filter_id = lf.id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country, cr.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       cam.id as id_campaign,
       org.id as id_origin,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       lf.is_coregistry as is_coregistry,
       lf.id as filer_id,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
         INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
         INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id and ac.customer_id = sl.customer_id
         INNER JOIN action_execution ae ON sl.action_id
         INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          INNER JOIN action_execution ae ON sl.action_id
          INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id
  INNER JOIN lead_filter lf
  ON lfcc.lead_filter_id = lf.id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country, cr.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       cam.id as id_campaign,
       org.id as id_origin,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       lf.is_coregistry as is_coregistry,
       lf.id as filter_id,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
         INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
         INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id and ac.customer_id = sl.customer_id
         INNER JOIN action_execution ae ON sl.action_id
         INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          INNER JOIN action_execution ae ON sl.action_id
          INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id
  INNER JOIN lead_filter lf
  ON lfcc.lead_filter_id = lf.id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country, cr.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       cam.id as id_campaign,
       org.id as id_origin,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       lf.is_coregistry as is_coregistry,
       lf.id as filter_id,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
         INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
         INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id and ac.customer_id = sl.customer_id
         INNER JOIN action_execution ae ON sl.action_id
         INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          INNER JOIN action_execution ae ON sl.action_id
          INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id
  INNER JOIN lead_filter lf
  ON lf.id = lfcc.lead_filter_id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country, cr.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       cam.id as id_campaign,
       org.id as id_origin,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       lf.is_coregistry as is_coregistry,
       lf.id as filter_id,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
         INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
         INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id and ac.customer_id = sl.customer_id
         INNER JOIN action_execution ae ON sl.action_id
         INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          INNER JOIN action_execution ae ON sl.action_id
          INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
  INNER JOIN lead_filter lf
  ON lf.id = lfcc.lead_filter_id 
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country, cr.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       cam.id as id_campaign,
       org.id as id_origin,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       lf.is_coregistry as is_coregistry,
       lf.id as filter_id,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
         INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
         INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id and ac.customer_id = sl.customer_id
         INNER JOIN action_execution ae ON sl.action_id
         INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          INNER JOIN action_execution ae ON sl.action_id
          INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
  INNER JOIN lead_filter lf
  ON lf.id = lfcc.lead_filter_id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country, cr.id
ORDER BY cam.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       cam.id as id_campaign,
       org.id as id_origin,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       lf.is_coregistry as is_coregistry,
       lf.id as filter_id,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
         INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
         INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id and ac.customer_id = sl.customer_id
         INNER JOIN action_execution ae ON sl.action_id
         INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          INNER JOIN action_execution ae ON sl.action_id
          INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
  INNER JOIN lead_filter lf
  ON lf.id = lfcc.lead_filter_id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country, cr.id
ORDER BY cam.id ASC;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       cam.id as id_campaign,
       org.id as id_origin,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       lf.is_coregistry as is_coregistry,
       lf.id as filter_id,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
         INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
         INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id and ac.customer_id = sl.customer_id
         INNER JOIN action_execution ae ON sl.action_id
         INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          INNER JOIN action_execution ae ON sl.action_id
          INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
  INNER JOIN lead_filter lf
  ON lf.id = lfcc.lead_filter_id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country, cr.id
ORDER BY cam.id, org.id ASC;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       cam.id as id_campaign,
       org.id as id_origin,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       lf.is_coregistry as is_coregistry,
       lf.id as filter_id,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
         INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
         INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id and ac.customer_id = sl.customer_id
         INNER JOIN action_execution ae ON sl.action_id
         INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          INNER JOIN action_execution ae ON sl.action_id
          INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
  INNER JOIN lead_filter lf
  ON lf.id = lfcc.lead_filter_id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country, cr.id
ORDER BY cam.id, org.id DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign, 
            cam.type_campaign as type_campaign,
            cr.name as name_creativity,
            org.name as name_origin,
            cou.name_en as name_country,
            pbl.name as name_publisher,
            AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
            AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
            (SELECT py.currency
            FROM  leadbox_lead_es.lead_cost as lco
            INNER JOIN payouts as py
            ON py.id=lco.payout_id
            WHERE lco.lead_id = l.id
            AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
            ) as currency,
            (SELECT AVG(py.cpc)
            FROM  leadbox_lead_es.lead_cost as lco
            INNER JOIN payouts as py
            ON py.id=lco.payout_id
            WHERE lco.lead_id = l.id
            AND py.origin_id=org.id
            AND py.campaign_id=cam.id
            AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
            ) as cpc,
            (SELECT AVG(py.cpl)
            FROM  leadbox_lead_es.lead_cost as lco
            INNER JOIN payouts as py
            ON py.id=lco.payout_id
            WHERE lco.lead_id = l.id
            AND py.origin_id=org.id
            AND py.campaign_id=cam.id
            AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
            ) as cpl,
            (SELECT AVG(py.cpm)
            FROM  leadbox_lead_es.lead_cost as lco
            INNER JOIN payouts as py
            ON py.id=lco.payout_id
            WHERE lco.lead_id = l.id
            AND py.origin_id=org.id
            AND py.campaign_id=cam.id
            AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
            ) as cpm,
            (SELECT count(id) 
            FROM tracking_clicks 
            WHERE campaign_id = cam.id
            AND origin_id = org.id
            AND creativity_id = cr.id
            AND tracking_clicks.created_at BETWEEN "${$start}" AND "${$end}" 
            ) as totalClicks,
            (SELECT count(id) 
            FROM tracking_impressions 
            WHERE campaign_id = cam.id
            AND origin_id = org.id
            AND creativity_id = cr.id
            AND tracking_impressions.created_at BETWEEN "${$start}" AND "${$end}" 
            ) as totalImpressions,
            (SELECT count(id) 
            FROM leadbox_lead_es.lead
            WHERE campaign_id = cam.id
            AND origin_id = org.id
            AND creativity_id = cr.id) as totalLeads,
           (SELECT DISTINCT count(l.id)
            FROM leadbox_lead_es.lead l
             INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
             INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id and ac.customer_id = sl.customer_id
             INNER JOIN action_execution ae ON sl.action_id
             INNER JOIN lead_filter lf ON lf.id = ae.filter_id
            WHERE l.campaign_id = cam.id
              AND l.origin_id = org.id
              AND sl.status = 1
              AND lf.is_coregistry = 1
              AND l.created_at BETWEEN "${$start}" AND "${$end}"
           ) as totalLeadsCorregistry,
           (SELECT DISTINCT count(l.id)
            FROM leadbox_lead_es.lead l
              INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
              INNER JOIN action_execution ae ON sl.action_id
              INNER JOIN lead_filter lf ON lf.id = ae.filter_id
            WHERE l.campaign_id = cam.id
              AND l.origin_id = org.id
              AND sl.status = 1
              AND lf.is_coregistry = 0
              AND l.created_at BETWEEN "${$start}" AND "${$end}"
           ) as totalLeadsSponsor,
            (SELECT 
            sum( pl.volume)
            FROM planning as pl
            WHERE pl.campaign_id = cam.id
            AND pl.origin_id=org.id
            AND pl.date BETWEEN "${$start}" AND "${$end}"
            ) as volumen,
            cr.name as name_creativity
            FROM campaign as cam
            INNER JOIN tracking_impressions as tri
            ON cam.id=tri.campaign_id
            INNER JOIN tracking_clicks as trc
            ON cam.id=trc.campaign_id
            INNER JOIN leadbox_lead_es.lead as l 
            ON cam.id=l.campaign_id
            INNER JOIN sending_log AS sl
            ON sl.lead_id=l.id
            INNER JOIN origin as org 
            ON l.origin_id=org.id
            LEFT JOIN publisher as pbl 
            ON pbl.id=org.publisher_id
            INNER JOIN country as cou
            ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
            LEFT JOIN creativity as cr
            ON l.creativity_id=cr.id
            INNER JOIN lead_filter_customer_campaign lfcc
            ON lfcc.customer_id = sl.customer_id
            INNER JOIN lead_filter lf
            ON lfcc.lead_filter_id = lf.id
            INNER JOIN purchase_order po
            ON po.campaign_id = lfcc.campaign_id
            AND po.customer_id = lfcc.customer_id
            INNER JOIN purchase_price_ranges ppp
            ON ppp.purchase_order_id = po.id
            WHERE tri.unique_impression=1 
            AND trc.unique_click=1
            AND l.created_at BETWEEN "${$start}" AND "${$end}"
            GROUP BY cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country, cr.id
            ORDER BY cam.id DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       cam.id as id_campaign,
       org.id as id_origin,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       lf.is_coregistry as is_coregistry,
       lf.id as filter_id,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
         INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
         INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id and ac.customer_id = sl.customer_id
         INNER JOIN action_execution ae ON sl.action_id
         INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          INNER JOIN action_execution ae ON sl.action_id
          INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
  INNER JOIN lead_filter lf
  ON lf.id = lfcc.lead_filter_id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country, cr.id
ORDER BY cam.id DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
         INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
         INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id and ac.customer_id = sl.customer_id
         INNER JOIN action_execution ae ON sl.action_id
         INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          INNER JOIN action_execution ae ON sl.action_id
          INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
  INNER JOIN lead_filter lf
  ON lf.id = lfcc.lead_filter_id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country, cr.id
ORDER BY cam.id DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
         INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
         INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id and ac.customer_id = sl.customer_id
         INNER JOIN action_execution ae ON sl.action_id
         INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          INNER JOIN action_execution ae ON sl.action_id
          INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
  INNER JOIN lead_filter lf
  ON lf.id = lfcc.lead_filter_id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY l.id, cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country, cr.id
ORDER BY cam.id DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
         INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
         INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id and ac.customer_id = sl.customer_id
         INNER JOIN action_execution ae ON sl.action_id
         INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          INNER JOIN action_execution ae ON sl.action_id
          INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
  INNER JOIN lead_filter lf
  ON lf.id = lfcc.lead_filter_id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY l.id, cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country
ORDER BY cam.id DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
         INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
         INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id and ac.customer_id = sl.customer_id
         INNER JOIN action_execution ae ON sl.action_id
         INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          INNER JOIN action_execution ae ON sl.action_id
          INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
  INNER JOIN lead_filter lf
  ON lf.id = lfcc.lead_filter_id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY l.id, cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id
ORDER BY cam.id DESC;
;-- -. . -..- - / . -. - .-. -.--
cam.id,;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
         INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
         INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id and ac.customer_id = sl.customer_id
         INNER JOIN action_execution ae ON sl.action_id
         INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          INNER JOIN action_execution ae ON sl.action_id
          INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
  INNER JOIN lead_filter lf
  ON lf.id = lfcc.lead_filter_id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY l.id, cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, name_country
ORDER BY cam.id DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
         INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
         INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id and ac.customer_id = sl.customer_id
         INNER JOIN action_execution ae ON sl.action_id
         INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          INNER JOIN action_execution ae ON sl.action_id
          INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
  INNER JOIN lead_filter lf
  ON lf.id = lfcc.lead_filter_id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY l.id, cam.name, cr.name, cam.type_campaign, org.name, pbl.name, name_country
ORDER BY cam.id DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
         INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
         INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id and ac.customer_id = sl.customer_id
         INNER JOIN action_execution ae ON sl.action_id
         INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          INNER JOIN action_execution ae ON sl.action_id
          INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
  INNER JOIN lead_filter lf
  ON lf.id = lfcc.lead_filter_id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY l.id, cam.name, cr.name, cam.type_campaign, org.name, name_country
ORDER BY cam.id DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
         INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
         INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id and ac.customer_id = sl.customer_id
         INNER JOIN action_execution ae ON sl.action_id
         INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          INNER JOIN action_execution ae ON sl.action_id
          INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
  INNER JOIN lead_filter lf
  ON lf.id = lfcc.lead_filter_id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY l.id, cam.name, cr.name, cam.type_campaign, name_country
ORDER BY cam.id DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
         INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
         INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id and ac.customer_id = sl.customer_id
         INNER JOIN action_execution ae ON sl.action_id
         INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          INNER JOIN action_execution ae ON sl.action_id
          INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
  INNER JOIN lead_filter lf
  ON lf.id = lfcc.lead_filter_id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY l.id, cam.name, cr.name, name_country
ORDER BY cam.id DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
         INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
         INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id and ac.customer_id = sl.customer_id
         INNER JOIN action_execution ae ON sl.action_id
         INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          INNER JOIN action_execution ae ON sl.action_id
          INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
  INNER JOIN lead_filter lf
  ON lf.id = lfcc.lead_filter_id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY l.id, cam.name, name_country
ORDER BY cam.id DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
         INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
         INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id and ac.customer_id = sl.customer_id
         INNER JOIN action_execution ae ON sl.action_id
         INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          INNER JOIN action_execution ae ON sl.action_id
          INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
  INNER JOIN lead_filter lf
  ON lf.id = lfcc.lead_filter_id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY l.id
ORDER BY cam.id DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
         INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
         INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id and ac.customer_id = sl.customer_id
         INNER JOIN action_execution ae ON sl.action_id
         INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          INNER JOIN action_execution ae ON sl.action_id
          INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
  INNER JOIN lead_filter lf
  ON lf.id = lfcc.lead_filter_id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY l.id, name_country
ORDER BY cam.id DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
         INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
         INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id and ac.customer_id = sl.customer_id
         INNER JOIN action_execution ae ON sl.action_id
         INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          INNER JOIN action_execution ae ON sl.action_id
          INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
  INNER JOIN lead_filter lf
  ON lf.id = lfcc.lead_filter_id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY l.id, l.campaign_id, l.catchment_country, name_country
ORDER BY cam.id DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
         INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
         INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id and ac.customer_id = sl.customer_id
         INNER JOIN action_execution ae ON sl.action_id
         INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          INNER JOIN action_execution ae ON sl.action_id
          INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
  INNER JOIN lead_filter lf
  ON lf.id = lfcc.lead_filter_id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY l.id, l.campaign_id, l.catchment_country, l.creativity_id, cam.id, cam.name, name_country
ORDER BY cam.id DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
         INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
         INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id and ac.customer_id = sl.customer_id
         INNER JOIN action_execution ae ON sl.action_id
         INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          INNER JOIN action_execution ae ON sl.action_id
          INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
  INNER JOIN lead_filter lf
  ON lf.id = lfcc.lead_filter_id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY l.campaign_id, l.catchment_country, l.creativity_id, cam.id, cam.name, name_country
ORDER BY cam.id DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
         INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
         INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id and ac.customer_id = sl.customer_id
         INNER JOIN action_execution ae ON sl.action_id
         INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          INNER JOIN action_execution ae ON sl.action_id
          INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
  INNER JOIN lead_filter lf
  ON lf.id = lfcc.lead_filter_id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY org.name, l.campaign_id, l.catchment_country, l.creativity_id, cam.id, cam.name, name_country
ORDER BY cam.id DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
         INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
         INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id and ac.customer_id = sl.customer_id
         INNER JOIN action_execution ae ON sl.action_id
         INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          INNER JOIN action_execution ae ON sl.action_id
          INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
  INNER JOIN lead_filter lf
  ON lf.id = lfcc.lead_filter_id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY org.name, l.campaign_id, l.catchment_country, l.creativity_id, cam.id, cam.name, name_country, pbl.name
ORDER BY cam.id DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
         INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
         INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id and ac.customer_id = sl.customer_id
         INNER JOIN action_execution ae ON sl.action_id
         INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          INNER JOIN action_execution ae ON sl.action_id
          INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
  INNER JOIN lead_filter lf
  ON lf.id = lfcc.lead_filter_id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY
  name_campaign,
  type_campaign,
  name_creativity,
  name_origin,
  name_country,
  name_publisher,
  is_coregistry,
  paysale_corregistro,
  paysale_co_sponsoring,
  currency,
  cpc,
  cpl,
  cpm,
  totalClicks,
  totalImpressions,
  totalLeads,
  totalLeadsCorregistry,
  totalLeadsSponsor,
  volumen,
  name_creativity
ORDER BY cam.id DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = l.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
         INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
         INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = l.id and ac.customer_id = sl.customer_id
         INNER JOIN action_execution ae ON sl.action_id
         INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(l.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
          INNER JOIN action_execution ae ON sl.action_id
          INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as l
ON cam.id=l.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=l.id
  INNER JOIN origin as org
  ON l.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON l.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
  INNER JOIN lead_filter lf
  ON lf.id = lfcc.lead_filter_id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY
  name_campaign,
  type_campaign,
  name_creativity,
  name_origin,
  name_country,
  name_publisher,
  is_coregistry,
  currency,
  cpc,
  cpl,
  cpm,
  totalClicks,
  totalImpressions,
  totalLeads,
  totalLeadsCorregistry,
  totalLeadsSponsor,
  volumen,
  name_creativity
ORDER BY cam.id DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
          INNER JOIN payouts as py
        ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead l
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead l
         INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
         INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
         INNER JOIN action_execution ae ON sl.action_id
         INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead l
          INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
          INNER JOIN action_execution ae ON sl.action_id
          INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
ON cam.id=`lead`.campaign_id
  INNER JOIN sending_log AS sl
  ON sl.lead_id=`lead`.id
  INNER JOIN origin as org
  ON `lead`.origin_id=org.id
  LEFT JOIN publisher as pbl
  ON pbl.id=org.publisher_id
  INNER JOIN country as cou
  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
  LEFT JOIN creativity as cr
  ON `lead`.creativity_id=cr.id
  INNER JOIN lead_filter_customer_campaign lfcc
  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
  INNER JOIN lead_filter lf
  ON lf.id = lfcc.lead_filter_id
  INNER JOIN purchase_order po
  ON po.campaign_id = lfcc.campaign_id
  AND po.customer_id = lfcc.customer_id
  INNER JOIN purchase_price_ranges ppp
  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY
  name_campaign,
  type_campaign,
  name_creativity,
  name_origin,
  name_country,
  name_publisher,
  is_coregistry,
  currency,
  cpc,
  cpl,
  cpm,
  totalClicks,
  totalImpressions,
  totalLeads,
  totalLeadsCorregistry,
  totalLeadsSponsor,
  volumen,
  name_creativity
ORDER BY cam.id DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead `lead`
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY
  name_campaign,
  type_campaign,
  name_creativity,
  name_origin,
  name_country,
  name_publisher,
  is_coregistry,
  currency,
  cpc,
  cpl,
  cpm,
  totalClicks,
  totalImpressions,
  totalLeads,
  totalLeadsCorregistry,
  totalLeadsSponsor,
  volumen,
  name_creativity
ORDER BY cam.id DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead `lead`
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY
  `lead`.id,
  name_campaign,
  type_campaign,
  name_creativity,
  name_origin,
  name_country,
  name_publisher,
  is_coregistry,
  currency,
  cpc,
  cpl,
  cpm,
  totalClicks,
  totalImpressions,
  totalLeads,
  totalLeadsCorregistry,
  totalLeadsSponsor,
  volumen,
  name_creativity
ORDER BY cam.id DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead `lead`
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY
  name_campaign,
  type_campaign,
  name_creativity,
  name_origin,
  name_country,
  name_publisher,
  is_coregistry,
  currency,
  cpc,
  cpl,
  cpm,
  totalClicks,
  totalImpressions,
  totalLeads,
  totalLeadsCorregistry,
  totalLeadsSponsor,
  volumen,
  name_creativity
ORDER BY cam.id DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead `lead`
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY
  name_campaign,
  type_campaign,
  name_creativity,
  name_origin,
  name_country,
  name_publisher,
  is_coregistry,
  currency,
  cpc,
  cpl,
  cpm,
  totalClicks,
  totalImpressions,
  totalLeads,
  volumen,
  name_creativity
ORDER BY cam.id DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY
  name_campaign,
  type_campaign,
  name_creativity,
  name_origin,
  name_country,
  name_publisher,
  is_coregistry,
  currency,
  cpc,
  cpl,
  cpm,
  totalClicks,
  totalImpressions,
  volumen,
  name_creativity
ORDER BY cam.id DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY
  name_campaign,
  type_campaign,
  name_creativity,
  name_origin,
  name_country,
  name_publisher,
  is_coregistry,
  currency,
  cpc,
  cpl,
  cpm,
  totalClicks,
  totalImpressions,
  volumen,
  name_creativity
ORDER BY cam.id DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY
  name_campaign,
  type_campaign,
  name_creativity,
  name_origin,
  name_country,
  name_publisher,
  is_coregistry,
  currency,
  cpc,
  cpl,
  cpm,
  totalClicks,
  totalImpressions,
  volumen,
  name_creativity,
lead.id
ORDER BY cam.id DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY
  name_campaign,
  type_campaign,
  name_creativity,
  name_origin,
  name_country,
  name_publisher,
  is_coregistry,
  currency,
  cpc,
  cpl,
  cpm,
  totalClicks,
  totalImpressions,
  volumen,
  name_creativity,
NOT lead.id
ORDER BY cam.id DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       count(SELECT id
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       count(SELECT id
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       count(SELECT id
        FROM leadbox_lead_es.lead `lead`
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY
  name_campaign,
  type_campaign,
  name_creativity,
  name_origin,
  name_country,
  name_publisher,
  is_coregistry,
  currency,
  cpc,
  cpl,
  cpm,
  totalClicks,
  totalImpressions,
  totalLeads,
  totalLeadsCorregistry,
  totalLeadsSponsor,
  volumen,
  name_creativity
ORDER BY cam.id DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT distinct cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead `lead`
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY
  name_campaign,
  type_campaign,
  name_creativity,
  name_origin,
  name_country,
  name_publisher,
  is_coregistry,
  currency,
  cpc,
  cpl,
  cpm,
  totalClicks,
  totalImpressions,
  totalLeads,
  totalLeadsCorregistry,
  totalLeadsSponsor,
  volumen,
  name_creativity
ORDER BY cam.id DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT distinct cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead `lead`
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY
  lead.id
  name_campaign,
  type_campaign,
  name_creativity,
  name_origin,
  name_country,
  name_publisher,
  is_coregistry,
  currency,
  cpc,
  cpl,
  cpm,
  totalClicks,
  totalImpressions,
  totalLeads,
  totalLeadsCorregistry,
  totalLeadsSponsor,
  volumen,
  name_creativity
ORDER BY cam.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT distinct cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead `lead`
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY
  lead.id,
  name_campaign,
  type_campaign,
  name_creativity,
  name_origin,
  name_country,
  name_publisher,
  is_coregistry,
  currency,
  cpc,
  cpl,
  cpm,
  totalClicks,
  totalImpressions,
  totalLeads,
  totalLeadsCorregistry,
  totalLeadsSponsor,
  volumen,
  name_creativity
ORDER BY cam.id DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT distinct cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead `lead`
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY
  lead.id,
  name_campaign,
  type_campaign,
  name_creativity,
  name_origin,
  name_country,
  name_publisher,
  is_coregistry,
  currency,
  cpc,
  cpl,
  cpm,
  totalClicks,
  totalImpressions,
  totalLeads,
  totalLeadsCorregistry,
  totalLeadsSponsor,
  volumen,
  name_creativity;
;-- -. . -..- - / . -. - .-. -.--
SELECT distinct cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead `lead`
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY
  lead.id,
  name_campaign,
  type_campaign,
  name_creativity,
  name_origin,
  name_country,
  name_publisher,
  is_coregistry;
;-- -. . -..- - / . -. - .-. -.--
SELECT distinct cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead `lead`
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY
  lead.id,
  cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country, cr.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT distinct cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead `lead`
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY l.id, cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country, cr.id, is_coregistry;
;-- -. . -..- - / . -. - .-. -.--
SELECT distinct cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead `lead`
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY lead.id, cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country, cr.id, is_coregistry;
;-- -. . -..- - / . -. - .-. -.--
SELECT distinct cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead `lead`
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY lead.id, name_campaign, type_campaign, name_creativity, name_origin, name_country, name_publisher;
;-- -. . -..- - / . -. - .-. -.--
SELECT distinct cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead `lead`
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY name_campaign, type_campaign, name_creativity, name_origin, name_country, name_publisher, currency;
;-- -. . -..- - / . -. - .-. -.--
SELECT distinct cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead `lead`
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
GROUP BY name_campaign, type_campaign, name_creativity, name_origin, name_country, name_publisher, currency;
;-- -. . -..- - / . -. - .-. -.--
SELECT distinct cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead `lead`
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
          GROUP BY `lead`.id
       ) as totalLeads,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
          GROUP BY `lead`.id
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
          GROUP BY `lead`.id
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY name_campaign, type_campaign, name_creativity, name_origin, name_country, name_publisher, currency;
;-- -. . -..- - / . -. - .-. -.--
SELECT distinct cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead `lead`
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
          GROUP BY `lead`.id
       ) as totalLeads,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
          GROUP BY `lead`.id
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
          GROUP BY `lead`.id
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY `lead`.id, name_campaign, type_campaign, name_creativity, name_origin, name_country, name_publisher, currency;
;-- -. . -..- - / . -. - .-. -.--
SELECT distinct cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead `lead`
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
          GROUP BY `lead`.id
       ) as totalLeads,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY `lead`.id, name_campaign, type_campaign, name_creativity, name_origin, name_country, name_publisher, currency;
;-- -. . -..- - / . -. - .-. -.--
SELECT distinct cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead `lead`
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY `lead`.id, name_campaign, type_campaign, name_creativity, name_origin, name_country, name_publisher, currency;
;-- -. . -..- - / . -. - .-. -.--
SELECT distinct cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY name_campaign, type_campaign, name_creativity, name_origin, name_country, name_publisher, currency;
;-- -. . -..- - / . -. - .-. -.--
SELECT distinct cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY name_campaign, type_campaign, name_creativity, name_origin, name_country, name_publisher, currency;
;-- -. . -..- - / . -. - .-. -.--
SELECT distinct cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.id, name_campaign, type_campaign, name_creativity, name_origin, name_country, name_publisher, currency;
;-- -. . -..- - / . -. - .-. -.--
SELECT distinct cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.id, name_campaign, type_campaign, name_creativity, name_origin, org.id, name_country, name_publisher, currency;
;-- -. . -..- - / . -. - .-. -.--
SELECT distinct cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.id, name_campaign, type_campaign, name_creativity, cr.id, name_origin, org.id, name_country, name_publisher, currency;
;-- -. . -..- - / . -. - .-. -.--
SELECT distinct cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.id, name_campaign, type_campaign, name_creativity, cr.id, name_origin, org.id, name_country, name_publisher, currency;
;-- -. . -..- - / . -. - .-. -.--
SELECT distinct cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead `lead`
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY `lead`.id, name_campaign, type_campaign, name_creativity, name_origin, name_country, name_publisher, currency;
;-- -. . -..- - / . -. - .-. -.--
SELECT distinct cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead `lead`
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.id, name_campaign, type_campaign, name_creativity, cr.id, name_origin, org.id, name_country, name_publisher, currency;
;-- -. . -..- - / . -. - .-. -.--
SELECT distinct cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead `lead`
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.id, name_campaign, type_campaign, name_creativity, cr.id, name_origin, org.id, name_country, name_publisher, currency;
;-- -. . -..- - / . -. - .-. -.--
SELECT distinct cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,

       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead `lead`
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.id, name_campaign, type_campaign, name_creativity, cr.id, name_origin, org.id, name_country, name_publisher, currency;
;-- -. . -..- - / . -. - .-. -.--
SELECT distinct cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
         GROUP BY lead.id
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
         GROUP BY lead.id
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
         GROUP BY lead.id
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
         GROUP BY lead.id
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead `lead`
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.id, name_campaign, type_campaign, name_creativity, cr.id, name_origin, org.id, name_country, name_publisher, py.currency;
;-- -. . -..- - / . -. - .-. -.--
SELECT distinct cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
         GROUP BY lead.id
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
         GROUP BY lead.id
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
         GROUP BY lead.id
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
         GROUP BY lead.id
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead `lead`
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.id, name_campaign, type_campaign, name_creativity, cr.id, name_origin, org.id, name_country, name_publisher;
;-- -. . -..- - / . -. - .-. -.--
SELECT distinct cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
         GROUP BY lead.id
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
         GROUP BY lead.id
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
         GROUP BY lead.id
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
         GROUP BY lead.id
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead `lead`
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.id, name_campaign, type_campaign, name_creativity, cr.id, name_origin, org.id, name_country, name_publisher, currency;
;-- -. . -..- - / . -. - .-. -.--
SELECT distinct cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
         GROUP BY lead.id, py.currency
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
         GROUP BY lead.id, py.currency
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
         GROUP BY lead.id, py.currency
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
         GROUP BY lead.id, py.currency
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead `lead`
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.id, name_campaign, type_campaign, name_creativity, cr.id, name_origin, org.id, name_country, name_publisher, currency, `lead`.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT distinct cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
         GROUP BY lead.id, py.currency
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
         GROUP BY lead.id, py.currency
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
         GROUP BY lead.id, py.currency
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
         GROUP BY lead.id, py.currency
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead `lead`
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.id, name_campaign, type_campaign, name_creativity, cr.id, name_origin, org.id, name_country, name_publisher, currency;
;-- -. . -..- - / . -. - .-. -.--
SELECT distinct cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
         GROUP BY lead.id, py.currency
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
         GROUP BY lead.id, py.currency
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
         GROUP BY lead.id, py.currency
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
         GROUP BY lead.id, py.currency
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead `lead`
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
         GROUP BY lead.id
       ) as totalLeads,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
         GROUP BY lead.id
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
         GROUP BY lead.id
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.id, name_campaign, type_campaign, name_creativity, cr.id, name_origin, org.id, name_country, name_publisher, currency;
;-- -. . -..- - / . -. - .-. -.--
SELECT distinct cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
        p.currency,
        AVG(p.cpc),
        AVG(p.cpl),
        AVG(p.cpm),
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead `lead`
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
       INNER JOIN leadbox_lead_es.lead_cost lc
                  ON lc.lead_id = `lead`.id
       INNER JOIN payouts p
                  ON p.id = lc.payout_id
                  AND p.cpc != 0 AND p.cpl != 0 AND p.cpm != 0
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.id, name_campaign, type_campaign, name_creativity, cr.id, name_origin, org.id, name_country, name_publisher, currency;
;-- -. . -..- - / . -. - .-. -.--
SELECT distinct cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
        p.currency,
        AVG(p.cpc) as cpc,
        AVG(p.cpl) as cpl,
        AVG(p.cpm) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead `lead`
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
       INNER JOIN leadbox_lead_es.lead_cost lc
                  ON lc.lead_id = `lead`.id
       INNER JOIN payouts p
                  ON p.id = lc.payout_id
                  AND p.cpc != 0 AND p.cpl != 0 AND p.cpm != 0
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.id, name_campaign, type_campaign, name_creativity, cr.id, name_origin, org.id, name_country, name_publisher, currency;
;-- -. . -..- - / . -. - .-. -.--
SELECT distinct cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
        p.currency,
        AVG(DISTINCT p.cpc) as cpc,
        AVG(p.cpl) as cpl,
        AVG(p.cpm) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead `lead`
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
       INNER JOIN leadbox_lead_es.lead_cost lc
                  ON lc.lead_id = `lead`.id
       INNER JOIN payouts p
                  ON p.id = lc.payout_id
                  AND p.cpc != 0 AND p.cpl != 0 AND p.cpm != 0
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.id, name_campaign, type_campaign, name_creativity, cr.id, name_origin, org.id, name_country, name_publisher, currency;
;-- -. . -..- - / . -. - .-. -.--
SELECT distinct cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
        p.currency,
        AVG(DISTINCT p.cpc) as cpc,
        AVG(DISTINCT p.cpl) as cpl,
        AVG(DISTINCT p.cpm) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead `lead`
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
       INNER JOIN leadbox_lead_es.lead_cost lc
                  ON lc.lead_id = `lead`.id
       INNER JOIN payouts p
                  ON p.id = lc.payout_id
                  AND p.cpc != 0 AND p.cpl != 0 AND p.cpm != 0
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.id, name_campaign, type_campaign, name_creativity, cr.id, name_origin, org.id, name_country, name_publisher, currency;
;-- -. . -..- - / . -. - .-. -.--
SELECT distinct cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead `lead`
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.id, name_campaign, type_campaign, name_creativity, cr.id, name_origin, org.id, name_country, name_publisher, currency;
;-- -. . -..- - / . -. - .-. -.--
SELECT distinct cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead `lead`
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY lead.id cam.id, name_campaign, type_campaign, name_creativity, cr.id, name_origin, org.id, name_country, name_publisher, currency;
;-- -. . -..- - / . -. - .-. -.--
SELECT distinct cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead `lead`
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY lead.id, cam.id, name_campaign, type_campaign, name_creativity, cr.id, name_origin, org.id, name_country, name_publisher, currency;
;-- -. . -..- - / . -. - .-. -.--
SELECT distinct cam.name as name_campaign,
                cam.type_campaign as type_campaign,
                cr.name as name_creativity,
                org.name as name_origin,
                cou.name_en as name_country,
                pbl.name as name_publisher,
                AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
                AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
                p.currency,
                AVG(DISTINCT p.cpc) as cpc,
                AVG(DISTINCT p.cpl) as cpl,
                AVG(DISTINCT p.cpm) as cpm,
                (SELECT count(id)
                 FROM tracking_clicks
                 WHERE campaign_id = cam.id
                   AND origin_id = org.id
                   AND creativity_id = cr.id
                   AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalClicks,
                (SELECT count(id)
                 FROM tracking_impressions
                 WHERE campaign_id = cam.id
                   AND origin_id = org.id
                   AND creativity_id = cr.id
                   AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalImpressions,
                (SELECT count(id)
                 FROM leadbox_lead_es.lead `lead`
                 WHERE campaign_id = cam.id
                   AND origin_id = org.id
                   AND creativity_id = cr.id
                   AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalLeads,
                (SELECT DISTINCT count(`lead`.id)
                 FROM leadbox_lead_es.lead `lead`
                        INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
                        INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
                        INNER JOIN action_execution ae ON sl.action_id
                        INNER JOIN lead_filter lf ON lf.id = ae.filter_id
                 WHERE `lead`.campaign_id = cam.id
                   AND `lead`.origin_id = org.id
                   AND sl.status = 1
                   AND lf.is_coregistry = 1
                   AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalLeadsCorregistry,
                (SELECT DISTINCT count(`lead`.id)
                 FROM leadbox_lead_es.lead `lead`
                        INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
                        INNER JOIN action_execution ae ON sl.action_id
                        INNER JOIN lead_filter lf ON lf.id = ae.filter_id
                 WHERE `lead`.campaign_id = cam.id
                   AND `lead`.origin_id = org.id
                   AND sl.status = 1
                   AND lf.is_coregistry = 0
                   AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalLeadsSponsor,
                (SELECT
                   sum( pl.volume)
                 FROM planning as pl
                 WHERE pl.campaign_id = cam.id
                   AND pl.origin_id=org.id
                   AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as volumen
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
       INNER JOIN leadbox_lead_es.lead_cost lc
                  ON lc.lead_id = `lead`.id
       INNER JOIN payouts p
                  ON p.id = lc.payout_id
                    AND p.cpc != 0 AND p.cpl != 0 AND p.cpm != 0
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.id, name_campaign, type_campaign, name_creativity, cr.id, name_origin, org.id, name_country, name_publisher, currency;
;-- -. . -..- - / . -. - .-. -.--
SELECT distinct cam.name as name_campaign,
                cam.type_campaign as type_campaign,
                cr.name as name_creativity,
                org.name as name_origin,
                cou.name_en as name_country,
                pbl.name as name_publisher,
                AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
                AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
                p.currency,
                AVG(DISTINCT p.cpc) as cpc,
                AVG(DISTINCT p.cpl) as cpl,
                AVG(DISTINCT p.cpm) as cpm,
                (SELECT count(id)
                 FROM tracking_clicks
                 WHERE campaign_id = cam.id
                   AND origin_id = org.id
                   AND creativity_id = cr.id
                   AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalClicks,
                (SELECT count(id)
                 FROM tracking_impressions
                 WHERE campaign_id = cam.id
                   AND origin_id = org.id
                   AND creativity_id = cr.id
                   AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalImpressions,
                (SELECT count(id)
                 FROM leadbox_lead_es.lead `lead`
                 WHERE campaign_id = cam.id
                   AND origin_id = org.id
                   AND creativity_id = cr.id
                   AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalLeads,
                (SELECT DISTINCT count(`lead`.id)
                 FROM leadbox_lead_es.lead `lead`
                        INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
                        INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
                        INNER JOIN action_execution ae ON sl.action_id
                        INNER JOIN lead_filter lf ON lf.id = ae.filter_id
                 WHERE `lead`.campaign_id = cam.id
                   AND `lead`.origin_id = org.id
                   AND sl.status = 1
                   AND lf.is_coregistry = 1
                   AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalLeadsCorregistry,
                (SELECT DISTINCT count(`lead`.id)
                 FROM leadbox_lead_es.lead `lead`
                        INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
                        INNER JOIN action_execution ae ON sl.action_id
                        INNER JOIN lead_filter lf ON lf.id = ae.filter_id
                 WHERE `lead`.campaign_id = cam.id
                   AND `lead`.origin_id = org.id
                   AND sl.status = 1
                   AND lf.is_coregistry = 0
                   AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalLeadsSponsor,
                (SELECT
                   sum( pl.volume)
                 FROM planning as pl
                 WHERE pl.campaign_id = cam.id
                   AND pl.origin_id=org.id
                   AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as volumen
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
       INNER JOIN leadbox_lead_es.lead_cost lc
                  ON lc.lead_id = `lead`.id
       INNER JOIN payouts p
                  ON p.id = lc.payout_id
                    AND p.cpc != 0 AND p.cpl != 0 AND p.cpm != 0
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.id, name_campaign, type_campaign, name_creativity, cr.id, name_origin, org.id, name_country, name_publisher, currency
ORDER BY cam.id, cam.name, cr.name, cr.id DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
                cam.type_campaign as type_campaign,
                cr.name as name_creativity,
                org.name as name_origin,
                cou.name_en as name_country,
                pbl.name as name_publisher,
                AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
                AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
                p.currency,
                AVG(DISTINCT p.cpc) as cpc,
                AVG(DISTINCT p.cpl) as cpl,
                AVG(DISTINCT p.cpm) as cpm,
                (SELECT count(id)
                 FROM tracking_clicks
                 WHERE campaign_id = cam.id
                   AND origin_id = org.id
                   AND creativity_id = cr.id
                   AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalClicks,
                (SELECT count(id)
                 FROM tracking_impressions
                 WHERE campaign_id = cam.id
                   AND origin_id = org.id
                   AND creativity_id = cr.id
                   AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalImpressions,
                (SELECT count(id)
                 FROM leadbox_lead_es.lead `lead`
                 WHERE campaign_id = cam.id
                   AND origin_id = org.id
                   AND creativity_id = cr.id
                   AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalLeads,
                (SELECT DISTINCT count(`lead`.id)
                 FROM leadbox_lead_es.lead `lead`
                        INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
                        INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
                        INNER JOIN action_execution ae ON sl.action_id
                        INNER JOIN lead_filter lf ON lf.id = ae.filter_id
                 WHERE `lead`.campaign_id = cam.id
                   AND `lead`.origin_id = org.id
                   AND sl.status = 1
                   AND lf.is_coregistry = 1
                   AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalLeadsCorregistry,
                (SELECT DISTINCT count(`lead`.id)
                 FROM leadbox_lead_es.lead `lead`
                        INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
                        INNER JOIN action_execution ae ON sl.action_id
                        INNER JOIN lead_filter lf ON lf.id = ae.filter_id
                 WHERE `lead`.campaign_id = cam.id
                   AND `lead`.origin_id = org.id
                   AND sl.status = 1
                   AND lf.is_coregistry = 0
                   AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalLeadsSponsor,
                (SELECT
                   sum( pl.volume)
                 FROM planning as pl
                 WHERE pl.campaign_id = cam.id
                   AND pl.origin_id=org.id
                   AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as volumen
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
       INNER JOIN leadbox_lead_es.lead_cost lc
                  ON lc.lead_id = `lead`.id
       INNER JOIN payouts p
                  ON p.id = lc.payout_id
                    AND p.cpc != 0 AND p.cpl != 0 AND p.cpm != 0
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.id, name_campaign, type_campaign, name_creativity, cr.id, name_origin, org.id, name_country, name_publisher, currency
ORDER BY cam.id, cam.name, cr.name, cr.id DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
                cam.type_campaign as type_campaign,
                cr.name as name_creativity,
                org.name as name_origin,
                cou.name_en as name_country,
                pbl.name as name_publisher,
                AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
                AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
                p.currency,
                AVG(DISTINCT p.cpc) as cpc,
                AVG(DISTINCT p.cpl) as cpl,
                AVG(DISTINCT p.cpm) as cpm,
                (SELECT count(id)
                 FROM tracking_clicks
                 WHERE campaign_id = cam.id
                   AND origin_id = org.id
                   AND creativity_id = cr.id
                   AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalClicks,
                (SELECT count(id)
                 FROM tracking_impressions
                 WHERE campaign_id = cam.id
                   AND origin_id = org.id
                   AND creativity_id = cr.id
                   AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalImpressions,
                (SELECT count(id)
                 FROM leadbox_lead_es.lead `lead`
                 WHERE campaign_id = cam.id
                   AND origin_id = org.id
                   AND creativity_id = cr.id
                   AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalLeads,
                (SELECT DISTINCT count(`lead`.id)
                 FROM leadbox_lead_es.lead `lead`
                        INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
                        INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
                        INNER JOIN action_execution ae ON sl.action_id
                        INNER JOIN lead_filter lf ON lf.id = ae.filter_id
                 WHERE `lead`.campaign_id = cam.id
                   AND `lead`.origin_id = org.id
                   AND sl.status = 1
                   AND lf.is_coregistry = 1
                   AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalLeadsCorregistry,
                (SELECT DISTINCT count(`lead`.id)
                 FROM leadbox_lead_es.lead `lead`
                        INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
                        INNER JOIN action_execution ae ON sl.action_id
                        INNER JOIN lead_filter lf ON lf.id = ae.filter_id
                 WHERE `lead`.campaign_id = cam.id
                   AND `lead`.origin_id = org.id
                   AND sl.status = 1
                   AND lf.is_coregistry = 0
                   AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalLeadsSponsor,
                (SELECT
                   sum( pl.volume)
                 FROM planning as pl
                 WHERE pl.campaign_id = cam.id
                   AND pl.origin_id=org.id
                   AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as volumen
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
       INNER JOIN leadbox_lead_es.lead_cost lc
                  ON lc.lead_id = `lead`.id
       INNER JOIN payouts p
                  ON p.id = lc.payout_id
                    AND p.cpc != 0 AND p.cpl != 0 AND p.cpm != 0
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.id, cam.type_campaign, cr.id, org.id, name_country, name_publisher, currency
ORDER BY cam.id, cam.name, cr.name, cr.id DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
                cam.type_campaign as type_campaign,
                cr.name as name_creativity,
                org.name as name_origin,
                cou.name_en as name_country,
                pbl.name as name_publisher,
                lf.is_coregistry as is_coregistry,
                AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
                AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
                p.currency,
                AVG(DISTINCT p.cpc) as cpc,
                AVG(DISTINCT p.cpl) as cpl,
                AVG(DISTINCT p.cpm) as cpm,
                (SELECT count(id)
                 FROM tracking_clicks
                 WHERE campaign_id = cam.id
                   AND origin_id = org.id
                   AND creativity_id = cr.id
                   AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalClicks,
                (SELECT count(id)
                 FROM tracking_impressions
                 WHERE campaign_id = cam.id
                   AND origin_id = org.id
                   AND creativity_id = cr.id
                   AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalImpressions,
                (SELECT count(id)
                 FROM leadbox_lead_es.lead `lead`
                 WHERE campaign_id = cam.id
                   AND origin_id = org.id
                   AND creativity_id = cr.id
                   AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalLeads,
                (SELECT DISTINCT count(`lead`.id)
                 FROM leadbox_lead_es.lead `lead`
                        INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
                        INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
                        INNER JOIN action_execution ae ON sl.action_id
                        INNER JOIN lead_filter lf ON lf.id = ae.filter_id
                 WHERE `lead`.campaign_id = cam.id
                   AND `lead`.origin_id = org.id
                   AND sl.status = 1
                   AND lf.is_coregistry = 1
                   AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalLeadsCorregistry,
                (SELECT DISTINCT count(`lead`.id)
                 FROM leadbox_lead_es.lead `lead`
                        INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
                        INNER JOIN action_execution ae ON sl.action_id
                        INNER JOIN lead_filter lf ON lf.id = ae.filter_id
                 WHERE `lead`.campaign_id = cam.id
                   AND `lead`.origin_id = org.id
                   AND sl.status = 1
                   AND lf.is_coregistry = 0
                   AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalLeadsSponsor,
                (SELECT
                   sum( pl.volume)
                 FROM planning as pl
                 WHERE pl.campaign_id = cam.id
                   AND pl.origin_id=org.id
                   AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as volumen
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
       INNER JOIN leadbox_lead_es.lead_cost lc
                  ON lc.lead_id = `lead`.id
       INNER JOIN payouts p
                  ON p.id = lc.payout_id
                    AND p.cpc != 0 AND p.cpl != 0 AND p.cpm != 0
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.id, cam.type_campaign, cr.id, org.id, name_country, pbl.id, currency, is_coregistry
ORDER BY cam.id, cam.name, cr.name, cr.id DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
                cam.type_campaign as type_campaign,
                cr.name as name_creativity,
                org.name as name_origin,
                cou.name_en as name_country,
                pbl.name as name_publisher,
                lf.is_coregistry as is_coregistry,
                AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
                AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
                p.currency,
                AVG(DISTINCT p.cpc) as cpc,
                AVG(DISTINCT p.cpl) as cpl,
                AVG(DISTINCT p.cpm) as cpm,
                (SELECT count(id)
                 FROM tracking_clicks
                 WHERE campaign_id = cam.id
                   AND origin_id = org.id
                   AND creativity_id = cr.id
                   AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalClicks,
                (SELECT count(id)
                 FROM tracking_impressions
                 WHERE campaign_id = cam.id
                   AND origin_id = org.id
                   AND creativity_id = cr.id
                   AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalImpressions,
                (SELECT count(id)
                 FROM leadbox_lead_es.lead `lead`
                 WHERE campaign_id = cam.id
                   AND origin_id = org.id
                   AND creativity_id = cr.id
                   AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalLeads,
                (SELECT DISTINCT count(`lead`.id)
                 FROM leadbox_lead_es.lead `lead`
                        INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
                        INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
                        INNER JOIN action_execution ae ON sl.action_id
                        INNER JOIN lead_filter lf ON lf.id = ae.filter_id
                 WHERE `lead`.campaign_id = cam.id
                   AND `lead`.origin_id = org.id
                   AND sl.status = 1
                   AND lf.is_coregistry = 1
                   AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalLeadsCorregistry,
                (SELECT DISTINCT count(`lead`.id)
                 FROM leadbox_lead_es.lead `lead`
                        INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
                        INNER JOIN action_execution ae ON sl.action_id
                        INNER JOIN lead_filter lf ON lf.id = ae.filter_id
                 WHERE `lead`.campaign_id = cam.id
                   AND `lead`.origin_id = org.id
                   AND sl.status = 1
                   AND lf.is_coregistry = 0
                   AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalLeadsSponsor,
                (SELECT
                   sum( pl.volume)
                 FROM planning as pl
                 WHERE pl.campaign_id = cam.id
                   AND pl.origin_id=org.id
                   AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as volumen
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
       INNER JOIN leadbox_lead_es.lead_cost lc
                  ON lc.lead_id = `lead`.id
       INNER JOIN payouts p
                  ON p.id = lc.payout_id
                    AND p.cpc != 0 AND p.cpl != 0 AND p.cpm != 0
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.id, cam.type_campaign, cr.id, org.id, name_country, pbl.id, is_coregistry
ORDER BY cam.id, cam.name, cr.name, cr.id DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
                cam.type_campaign as type_campaign,
                cr.name as name_creativity,
                org.name as name_origin,
                cou.name_en as name_country,
                pbl.name as name_publisher,
                lf.is_coregistry as is_coregistry,
                AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
                AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
                p.currency,
                AVG(DISTINCT p.cpc) as cpc,
                AVG(DISTINCT p.cpl) as cpl,
                AVG(DISTINCT p.cpm) as cpm,
                (SELECT count(id)
                 FROM tracking_clicks
                 WHERE campaign_id = cam.id
                   AND origin_id = org.id
                   AND creativity_id = cr.id
                   AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalClicks,
                (SELECT count(id)
                 FROM tracking_impressions
                 WHERE campaign_id = cam.id
                   AND origin_id = org.id
                   AND creativity_id = cr.id
                   AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalImpressions,
                (SELECT count(id)
                 FROM leadbox_lead_es.lead `lead`
                 WHERE campaign_id = cam.id
                   AND origin_id = org.id
                   AND creativity_id = cr.id
                   AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalLeads,
                (SELECT DISTINCT count(`lead`.id)
                 FROM leadbox_lead_es.lead `lead`
                        INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
                        INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
                        INNER JOIN action_execution ae ON sl.action_id
                        INNER JOIN lead_filter lf ON lf.id = ae.filter_id
                 WHERE `lead`.campaign_id = cam.id
                   AND `lead`.origin_id = org.id
                   AND sl.status = 1
                   AND lf.is_coregistry = 1
                   AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalLeadsCorregistry,
                (SELECT DISTINCT count(`lead`.id)
                 FROM leadbox_lead_es.lead `lead`
                        INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
                        INNER JOIN action_execution ae ON sl.action_id
                        INNER JOIN lead_filter lf ON lf.id = ae.filter_id
                 WHERE `lead`.campaign_id = cam.id
                   AND `lead`.origin_id = org.id
                   AND sl.status = 1
                   AND lf.is_coregistry = 0
                   AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalLeadsSponsor,
                (SELECT
                   sum( pl.volume)
                 FROM planning as pl
                 WHERE pl.campaign_id = cam.id
                   AND pl.origin_id=org.id
                   AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as volumen
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
       INNER JOIN leadbox_lead_es.lead_cost lc
                  ON lc.lead_id = `lead`.id
       INNER JOIN payouts p
                  ON p.id = lc.payout_id
                    AND p.cpc != 0 AND p.cpl != 0 AND p.cpm != 0
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.id, cam.type_campaign, cr.id, org.id, name_country, pbl.id, currency, lf.is_coregistry
ORDER BY cam.id, cam.name, cr.name, cr.id DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
                cam.type_campaign as type_campaign,
                cr.name as name_creativity,
                org.name as name_origin,
                cou.name_en as name_country,
                pbl.name as name_publisher,
                AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
                AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
                p.currency,
                AVG(DISTINCT p.cpc) as cpc,
                AVG(DISTINCT p.cpl) as cpl,
                AVG(DISTINCT p.cpm) as cpm,
                (SELECT count(id)
                 FROM tracking_clicks
                 WHERE campaign_id = cam.id
                   AND origin_id = org.id
                   AND creativity_id = cr.id
                   AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalClicks,
                (SELECT count(id)
                 FROM tracking_impressions
                 WHERE campaign_id = cam.id
                   AND origin_id = org.id
                   AND creativity_id = cr.id
                   AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalImpressions,
                (SELECT count(id)
                 FROM leadbox_lead_es.lead `lead`
                 WHERE campaign_id = cam.id
                   AND origin_id = org.id
                   AND creativity_id = cr.id
                   AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalLeads,
                (SELECT DISTINCT count(`lead`.id)
                 FROM leadbox_lead_es.lead `lead`
                        INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
                        INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
                        INNER JOIN action_execution ae ON sl.action_id
                        INNER JOIN lead_filter lf ON lf.id = ae.filter_id
                 WHERE `lead`.campaign_id = cam.id
                   AND `lead`.origin_id = org.id
                   AND sl.status = 1
                   AND lf.is_coregistry = 1
                   AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalLeadsCorregistry,
                (SELECT DISTINCT count(`lead`.id)
                 FROM leadbox_lead_es.lead `lead`
                        INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
                        INNER JOIN action_execution ae ON sl.action_id
                        INNER JOIN lead_filter lf ON lf.id = ae.filter_id
                 WHERE `lead`.campaign_id = cam.id
                   AND `lead`.origin_id = org.id
                   AND sl.status = 1
                   AND lf.is_coregistry = 0
                   AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalLeadsSponsor,
                (SELECT
                   sum( pl.volume)
                 FROM planning as pl
                 WHERE pl.campaign_id = cam.id
                   AND pl.origin_id=org.id
                   AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as volumen
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
       INNER JOIN leadbox_lead_es.lead_cost lc
                  ON lc.lead_id = `lead`.id
       INNER JOIN payouts p
                  ON p.id = lc.payout_id
                    AND p.cpc != 0 AND p.cpl != 0 AND p.cpm != 0
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.id, cam.type_campaign, cr.id, org.id, name_country, pbl.id, currency, lf.is_coregistry
ORDER BY cam.id, cam.name, cr.name, cr.id DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
       (SELECT py.currency
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as currency,
       (SELECT AVG(py.cpc)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpc,
       (SELECT AVG(py.cpl)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpl,
       (SELECT AVG(py.cpm)
        FROM  leadbox_lead_es.lead_cost as lco
                INNER JOIN payouts as py
                           ON py.id=lco.payout_id
        WHERE lco.lead_id = `lead`.id
          AND py.origin_id=org.id
          AND py.campaign_id=cam.id
          AND py.cpc!=0 AND py.cpm!=0 AND py.cpl!=0
       ) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead `lead`
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeads,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 1
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsCorregistry,
       (SELECT DISTINCT count(`lead`.id)
        FROM leadbox_lead_es.lead `lead`
               INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
               INNER JOIN action_execution ae ON sl.action_id
               INNER JOIN lead_filter lf ON lf.id = ae.filter_id
        WHERE `lead`.campaign_id = cam.id
          AND `lead`.origin_id = org.id
          AND sl.status = 1
          AND lf.is_coregistry = 0
          AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as totalLeadsSponsor,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.origin_id=org.id
          AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
       ) as volumen
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY lead.id, cam.id, name_campaign, type_campaign, name_creativity, cr.id, name_origin, org.id, name_country, name_publisher, currency;
;-- -. . -..- - / . -. - .-. -.--
,;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
                cam.type_campaign as type_campaign,
                cr.name as name_creativity,
                org.name as name_origin,
                cou.name_en as name_country,
                pbl.name as name_publisher,
                AVG(DISTINCT ppp.range_price_corregistro) as paysale_corregistro,
                AVG(DISTINCT ppp.range_price_co_sponsoring) as paysale_co_sponsoring,
                p.currency,
                AVG(DISTINCT p.cpc) as cpc,
                AVG(DISTINCT p.cpl) as cpl,
                AVG(DISTINCT p.cpm) as cpm,
                (SELECT count(id)
                 FROM tracking_clicks
                 WHERE campaign_id = cam.id
                   AND origin_id = org.id
                   AND creativity_id = cr.id
                   AND tracking_clicks.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalClicks,
                (SELECT count(id)
                 FROM tracking_impressions
                 WHERE campaign_id = cam.id
                   AND origin_id = org.id
                   AND creativity_id = cr.id
                   AND tracking_impressions.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalImpressions,
                (SELECT count(id)
                 FROM leadbox_lead_es.lead `lead`
                 WHERE campaign_id = cam.id
                   AND origin_id = org.id
                   AND creativity_id = cr.id
                   AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalLeads,
                (SELECT DISTINCT count(`lead`.id)
                 FROM leadbox_lead_es.lead `lead`
                        INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
                        INNER JOIN leadbox_lead_es.accepted_customer ac ON ac.lead_id = `lead`.id and ac.customer_id = sl.customer_id
                        INNER JOIN action_execution ae ON sl.action_id
                        INNER JOIN lead_filter lf ON lf.id = ae.filter_id
                 WHERE `lead`.campaign_id = cam.id
                   AND `lead`.origin_id = org.id
                   AND sl.status = 1
                   AND lf.is_coregistry = 1
                   AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalLeadsCorregistry,
                (SELECT DISTINCT count(`lead`.id)
                 FROM leadbox_lead_es.lead `lead`
                        INNER JOIN sending_log sl ON sl.lead_id = `lead`.id AND sl.status = 1
                        INNER JOIN action_execution ae ON sl.action_id
                        INNER JOIN lead_filter lf ON lf.id = ae.filter_id
                 WHERE `lead`.campaign_id = cam.id
                   AND `lead`.origin_id = org.id
                   AND sl.status = 1
                   AND lf.is_coregistry = 0
                   AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as totalLeadsSponsor,
                (SELECT
                   sum( pl.volume)
                 FROM planning as pl
                 WHERE pl.campaign_id = cam.id
                   AND pl.origin_id=org.id
                   AND pl.date BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
                ) as volumen
FROM campaign as cam
       INNER JOIN tracking_impressions as tri
                  ON cam.id=tri.campaign_id
       INNER JOIN tracking_clicks as trc
                  ON cam.id=trc.campaign_id
       INNER JOIN leadbox_lead_es.lead as `lead`
                  ON cam.id=`lead`.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=`lead`.id
       INNER JOIN origin as org
                  ON `lead`.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(`lead`.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON `lead`.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id AND lfcc.sending_configuration_id = sl.sending_configuration_id
       INNER JOIN lead_filter lf
                  ON lf.id = lfcc.lead_filter_id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
       INNER JOIN leadbox_lead_es.lead_cost lc
                  ON lc.lead_id = `lead`.id
       INNER JOIN payouts p
                  ON p.id = lc.payout_id
                    AND p.cpc != 0 AND p.cpl != 0 AND p.cpm != 0
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND `lead`.created_at BETWEEN '2019-05-01 12:00:00' AND '2019-05-30 12:00:00'
GROUP BY cam.id, cam.type_campaign, cr.id, org.id, name_country, pbl.id, currency
ORDER BY cam.id, cam.name, cr.name, cr.id DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT count(sl.lead_id)
FROM  sending_log as sl
        INNER JOIN leadbox_lead_es.lead as l
                   ON l.id = sl.lead_id
WHERE sl.customer_id=1
  AND l.campaign_id = 1
  AND sl.created_at BETWEEN "' . $start . '" AND "' . $end . '"
  AND( sl.status = 2
  OR ( sl.status = 1  AND l.dedup=1 ));
;-- -. . -..- - / . -. - .-. -.--
SELECT count(sl.lead_id)
FROM  sending_log as sl
        INNER JOIN leadbox_lead_es.lead as l
                   ON l.id = sl.lead_id
WHERE sl.customer_id=2
  AND l.campaign_id = 2
  AND sl.created_at BETWEEN "' . $start . '" AND "' . $end . '"
  AND( sl.status = 2
  OR ( sl.status = 1  AND l.dedup=1 ));
;-- -. . -..- - / . -. - .-. -.--
SELECT sl.id, l.id
FROM  sending_log as sl
        INNER JOIN leadbox_lead_es.lead as l
                   ON l.id = sl.lead_id
WHERE sl.customer_id=2
  AND l.campaign_id = 2
  AND sl.created_at BETWEEN "' . $start . '" AND "' . $end . '"
  AND( sl.status = 2
  OR ( sl.status = 1  AND l.dedup=1 ));
;-- -. . -..- - / . -. - .-. -.--
SELECT sl.id, l.id, sl.status
FROM  sending_log as sl
        INNER JOIN leadbox_lead_es.lead as l
                   ON l.id = sl.lead_id
WHERE sl.customer_id=2
  AND l.campaign_id = 2
  AND sl.created_at BETWEEN "' . $start . '" AND "' . $end . '"
  AND( sl.status = 2
  OR ( sl.status = 1  AND l.dedup=1 ));
;-- -. . -..- - / . -. - .-. -.--
SELECT sl.id, l.id, sl.status
FROM  sending_log as sl
        INNER JOIN leadbox_lead_es.lead as l
                   ON l.id = sl.lead_id
WHERE sl.customer_id=1
  AND l.campaign_id = 1
  AND sl.created_at BETWEEN "' . $start . '" AND "' . $end . '"
  AND( sl.status = 2
  OR ( sl.status = 1  AND l.dedup=1 ));
;-- -. . -..- - / . -. - .-. -.--
SELECT sl.id, l.id, sl.status
FROM  sending_log as sl
        INNER JOIN leadbox_lead_es.lead as l
                   ON l.id = sl.lead_id
WHERE sl.customer_id = 1
  AND l.campaign_id = 1
  AND sl.created_at BETWEEN "' . $start . '" AND "' . $end . '"
  AND( sl.status = 2
  OR ( sl.status = 1  AND l.dedup=1 ));
;-- -. . -..- - / . -. - .-. -.--
SELECT sl.id, l.id, sl.status
FROM sending_log as sl
        INNER JOIN leadbox_lead_es.lead as l
                   ON l.id = sl.lead_id
WHERE sl.customer_id = 1
  AND l.campaign_id = 1
  AND sl.created_at BETWEEN "' . $start . '" AND "' . $end . '"
  AND( sl.status = 2
  OR ( sl.status = 1  AND l.dedup=1 ));
;-- -. . -..- - / . -. - .-. -.--
SELECT sl.id, l.id, sl.status
FROM leadbox_core.sending_log as sl
        INNER JOIN leadbox_lead_es.lead as l
                   ON l.id = sl.lead_id
WHERE sl.customer_id = 1
  AND l.campaign_id = 1
  AND sl.created_at BETWEEN "' . $start . '" AND "' . $end . '"
  AND( sl.status = 2
  OR ( sl.status = 1  AND l.dedup=1 ));
;-- -. . -..- - / . -. - .-. -.--
SELECT sl.id, l.id, sl.status
FROM leadbox_core.sending_log as sl
        INNER JOIN leadbox_lead_es.lead as l
                   ON l.id = sl.lead_id
WHERE sl.customer_id = 1
  AND l.campaign_id = 1
  AND( sl.status = 2
  OR ( sl.status = 1  AND l.dedup=1 ));
;-- -. . -..- - / . -. - .-. -.--
SELECT count(sl.lead_id)
FROM  sending_log as sl
        INNER JOIN leadbox_lead_es.lead as l
                   ON l.id = sl.lead_id
WHERE sl.customer_id=1
  AND l.campaign_id = 1
  AND( sl.status = 2
  OR ( sl.status = 1  AND l.dedup=1 ));
;-- -. . -..- - / . -. - .-. -.--
SELECT count(sl.lead_id)
FROM  sending_log as sl
        INNER JOIN leadbox_lead_es.lead as l
                   ON l.id = sl.lead_id
WHERE sl.customer_id=2
  AND l.campaign_id = 2
  AND( sl.status = 2
  OR ( sl.status = 1  AND l.dedup=1 ));
;-- -. . -..- - / . -. - .-. -.--
SELECT count(sl.lead_id)
FROM  sending_log as sl
        INNER JOIN leadbox_lead_es.lead as l
                   ON l.id = sl.lead_id
WHERE sl.customer_id=1
  AND l.campaign_id = 2
  AND( sl.status = 2
  OR ( sl.status = 1  AND l.dedup=1 ));
;-- -. . -..- - / . -. - .-. -.--
SELECT count(sl.lead_id)
FROM  sending_log as sl
        INNER JOIN leadbox_lead_es.lead as l
                   ON l.id = sl.lead_id
WHERE sl.customer_id=2
  AND l.campaign_id = 1
  AND( sl.status = 2
  OR ( sl.status = 1  AND l.dedup=1 ));
;-- -. . -..- - / . -. - .-. -.--
SELECT `lead`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
                   AND ((sending_log.created_at NOT BETWEEN '2019-05-03 09:17:59' AND '2019-06-03 09:17:59')
                     OR sending_log.created_at IS NULL)
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.email = `lead`.email COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-05-30 20:00:00' AND '2019-06-03 07:17:59'
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1) GROUP BY `lead`.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT `lead`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
                   AND (sending_log.created_at NOT BETWEEN '2019-05-03 09:17:59' AND '2019-06-03 09:17:59')
                     OR sending_log.created_at IS NULL
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.email = `lead`.email COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-05-30 20:00:00' AND '2019-06-03 07:17:59'
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1) GROUP BY `lead`.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT `lead`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   CORE_DB_NAME.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs
FROM CURRENT_CONNECTION_DB.accepted_customer
       LEFT JOIN CURRENT_CONNECTION_DB.`lead` AS `lead` 
         ON `lead`.id = accepted_customer.lead_id 
WHERE `lead`.created_at BETWEEN '2019-06-01 00:36:57' AND '2019-06-03 12:36:57'  
  AND `lead`.campaign_id IN (1)  
  AND accepted_customer.customer_id IN (1,2) 
GROUP BY `lead`.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT `lead`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   CORE_DB_NAME.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs
FROM leadbox_core.accepted_customer
       LEFT JOIN leadbox_core.`lead` AS `lead`
         ON `lead`.id = accepted_customer.lead_id
WHERE `lead`.created_at BETWEEN '2019-06-01 00:36:57' AND '2019-06-03 12:36:57'
  AND `lead`.campaign_id IN (1)
  AND accepted_customer.customer_id IN (1,2)
GROUP BY `lead`.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT `lead`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   CORE_DB_NAME.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs
FROM leadbox_lead_es.accepted_customer
       LEFT JOIN leadbox_lead_es.`lead` AS `lead`
         ON `lead`.id = accepted_customer.lead_id
WHERE `lead`.created_at BETWEEN '2019-06-01 00:36:57' AND '2019-06-03 12:36:57'
  AND `lead`.campaign_id IN (1)
  AND accepted_customer.customer_id IN (1,2)
GROUP BY `lead`.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT `lead`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs
FROM leadbox_lead_es.accepted_customer
       LEFT JOIN leadbox_lead_es.`lead` AS `lead`
         ON `lead`.id = accepted_customer.lead_id
WHERE `lead`.created_at BETWEEN '2019-06-01 00:36:57' AND '2019-06-03 12:36:57'
  AND `lead`.campaign_id IN (1)
  AND accepted_customer.customer_id IN (1,2)
GROUP BY `lead`.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT `lead`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs
FROM leadbox_lead_es.accepted_customer
       LEFT JOIN leadbox_lead_es.`lead` AS `lead`
         ON `lead`.id = accepted_customer.lead_id
WHERE `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 12:36:57'
  AND `lead`.campaign_id IN (1)
  AND accepted_customer.customer_id IN (1,2)
GROUP BY `lead`.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT `lead`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs
FROM leadbox_lead_es.accepted_customer
       LEFT JOIN leadbox_lead_es.`lead` AS `lead`
         ON `lead`.id = accepted_customer.lead_id
WHERE `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND `lead`.campaign_id IN (1)
  AND accepted_customer.customer_id IN (1,2)
GROUP BY `lead`.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT `lead`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs
FROM leadbox_lead_es.accepted_customer
       LEFT JOIN leadbox_lead_es.`lead` AS `lead`
         ON `lead`.id = accepted_customer.lead_id
WHERE `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00';
;-- -. . -..- - / . -. - .-. -.--
SELECT `lead`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
                   AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
                     OR sending_log.created_at IS NULL
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.email = `lead`.email COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1) GROUP BY `lead`.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT `lead`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
                   AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
                     OR sending_log.created_at IS NULL
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1) GROUP BY `lead`.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT `lead`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.id = `lead`.id COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1) GROUP BY `lead`.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT `lead`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.id = `lead`.id
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1) GROUP BY `lead`.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT `lead`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.id = `lead`.id
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1) GROUP BY `lead`.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT `lead`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.id = `lead`.id
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00';
;-- -. . -..- - / . -. - .-. -.--
SELECT `lead`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,

FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.id = `lead`.id
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1) GROUP BY `lead`.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT `lead`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
                   AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
                     OR sending_log.created_at IS NULL
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.id = `lead`.id COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1) GROUP BY `lead`.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT `lead`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
                   AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
                     OR sending_log.created_at IS NULL
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.id = `lead`.id COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1);
;-- -. . -..- - / . -. - .-. -.--
SELECT `sending_log`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
                   AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
                     OR sending_log.created_at IS NULL
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.id = `lead`.id COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1);
;-- -. . -..- - / . -. - .-. -.--
SELECT `sending_log`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
                   AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
                     OR sending_log.created_at IS NULL
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.id = `lead`.id COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1)
  GROUP BY sending_log.lead_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT `sending_log`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.id = `lead`.id COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1)
  GROUP BY sending_log.lead_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT `sending_log`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1)
  GROUP BY sending_log.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT `sending_log`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1)
  GROUP BY sending_log.lead_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT `sending_log`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1)
  GROUP BY sending_log.lead_id, sending_logs.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT `sending_log`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1)
  GROUP BY sending_log.lead_id, sending_log.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT `sending_log`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1)
  GROUP BY sending_log.id, `lead`.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT `sending_log`.*,
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1)
  GROUP BY sending_log.id, `lead`.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT `sending_log`.*
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1)
  GROUP BY sending_log.id, `lead`.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT `sending_log`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1)
  GROUP BY `lead`.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT `sending_log`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1)
  GROUP BY sending_log.lead_id, sending_log.id, `lead`.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT `sending_log`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.id = `lead`.id COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1)
  GROUP BY sending_log.id;
;-- -. . -..- - / . -. - .-. -.--
;;
;-- -. . -..- - / . -. - .-. -.--
SELECT `sending_log`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.id = `lead`.id COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1);
;-- -. . -..- - / . -. - .-. -.--
SELECT `sending_log`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.id = `lead`.id COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1);
;-- -. . -..- - / . -. - .-. -.--
SELECT `sending_log`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.id = `lead`.id COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1);
;-- -. . -..- - / . -. - .-. -.--
SELECT `sending_log`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.id = `lead`.id
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1);
;-- -. . -..- - / . -. - .-. -.--
SELECT `sending_log`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1);
;-- -. . -..- - / . -. - .-. -.--
SELECT `sending_log`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
WHERE sending_log.id = `lead`.id
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1);
;-- -. . -..- - / . -. - .-. -.--
SELECT `sending_log`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
WHERE sending_log.id = `lead`.id
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1);
;-- -. . -..- - / . -. - .-. -.--
SELECT `sending_log`.*,
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
WHERE sending_log.id = `lead`.id
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1);
;-- -. . -..- - / . -. - .-. -.--
SELECT `sending_log`.*
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
WHERE sending_log.id = `lead`.id
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1);
;-- -. . -..- - / . -. - .-. -.--
SELECT `sending_log`.*
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
WHERE sending_log.id = `lead`.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT `sending_log`.*
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
WHERE sending_log.id = `lead`.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT `sending_log`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.lead_id = `lead`.id
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1)
  GROUP BY ac.lead_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT `sending_log`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.lead_id = `lead`.id
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1)
  GROUP BY sending_log.lead_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT `sending_log`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.lead_id = `lead`.id
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1);
;-- -. . -..- - / . -. - .-. -.--
SELECT `sending_log`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.lead_id = `lead`.id
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1)
  GROUP BY sending_log.lead_id, sending_log.id, `lead`.id;
;-- -. . -..- - / . -. - .-. -.--
sending_log.lead_id = `lead`.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT `sending_log`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3
          AND (sending_log.created_at BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
           OR sending_log.created_at IS NULL
         ) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.lead_id = `lead`.id
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1)
  GROUP BY sending_log.lead_id, sending_log.id, `lead`.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT `sending_log`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3
          AND (sending_log.created_at BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
           OR sending_log.created_at IS NULL
         ) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.email = `lead`.email COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1)
  GROUP BY sending_log.lead_id, `lead`.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT `sending_log`.*,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3
          AND (sending_log.created_at BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
           OR sending_log.created_at IS NULL
         ) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.email = `lead`.email COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1)
  GROUP BY sending_log.lead_id, sending_log.id, `lead`.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT `sending_log`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3
          AND (sending_log.created_at BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
           OR sending_log.created_at IS NULL
         ) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.email = `lead`.email COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1)
  GROUP BY sending_log.lead_id, sending_log.id, `lead`.id, `lead`.email;
;-- -. . -..- - / . -. - .-. -.--
SELECT `lead`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3
          AND (sending_log.created_at BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
           OR sending_log.created_at IS NULL
         ) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.email = `lead`.email COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1)
  GROUP BY sending_log.lead_id, sending_log.id, `lead`.id, `lead`.email;
;-- -. . -..- - / . -. - .-. -.--
SELECT `lead`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3
          AND (sending_log.created_at BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
           OR sending_log.created_at IS NULL
         ) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.email = `lead`.email COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1)
  GROUP BY sending_log.lead_id, sending_log.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT `lead`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3
          AND (sending_log.created_at BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
           OR sending_log.created_at IS NULL
         ) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.email = `lead`.email COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1)
  GROUP BY sending_log.lead_id, sending_log.id, `lead`.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT `sending_log`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3
          AND (sending_log.created_at BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
           OR sending_log.created_at IS NULL
         ) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.email = `lead`.email COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1)
  GROUP BY sending_log.lead_id, sending_log.id, `lead`.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT `sending_log`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3
          AND (sending_log.created_at BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
           OR sending_log.created_at IS NULL
         ) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.email = `lead`.email COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1)
  GROUP BY sending_log.lead_id, sending_log.id, `lead`.id;
;-- -. . -..- - / . -. - .-. -.--
lead;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT `lead`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3
          AND (sending_log.created_at BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
           OR sending_log.created_at IS NULL
         ) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.email = `lead`.email COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1)
  GROUP BY sending_log.lead_id, sending_log.id, `lead`.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT `lead`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3
          AND (sending_log.created_at BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
           OR sending_log.created_at IS NULL
         ) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.email = `lead`.email COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1)
  GROUP BY sending_log.lead_id, sending_log.id, `lead`.id, `lead`.email;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT `lead`.*,
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3
          AND (sending_log.created_at BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
           OR sending_log.created_at IS NULL
         ) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.email = `lead`.email COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1)
  GROUP BY sending_log.lead_id, sending_log.id, `lead`.id, `lead`.email;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT `lead`.*
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3
          AND (sending_log.created_at BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
           OR sending_log.created_at IS NULL
         ) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.email = `lead`.email COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1)
  GROUP BY sending_log.lead_id, sending_log.id, `lead`.id, `lead`.email;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT `lead`.*
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3
          AND (sending_log.created_at BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
           OR sending_log.created_at IS NULL
         ) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.email = `lead`.email COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1)
  GROUP BY sending_log.lead_id, sending_log.id, `lead`.id, `lead`.email;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT `lead`.*,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3
          AND (sending_log.created_at BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
           OR sending_log.created_at IS NULL
         ) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.email = `lead`.email COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1)
  GROUP BY sending_log.lead_id, sending_log.id, `lead`.id, `lead`.email;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT `lead`.*,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3
          AND (sending_log.created_at BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
           OR sending_log.created_at IS NULL
         ) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.email = `lead`.email COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1)
  GROUP BY sending_log.lead_id, sending_log.id, `lead`.email;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT `lead`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3
          AND (sending_log.created_at BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
           OR sending_log.created_at IS NULL
         ) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.email = `lead`.email COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1)
  GROUP BY sending_log.lead_id, sending_log.id, `lead`.email;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT `lead`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3
          AND (sending_log.created_at BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
           OR sending_log.created_at IS NULL
         ) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.id = `lead`.id 
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1)
  GROUP BY sending_log.lead_id, sending_log.id, `lead`.email;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT `lead`.*
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.id = `lead`.id COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1)
  GROUP BY sending_log.lead_id, sending_log.id, `lead`.email;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT `lead`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3
          AND (sending_log.created_at BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
           OR sending_log.created_at IS NULL
         ) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.id = `lead`.id COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  GROUP BY sending_log.lead_id, sending_log.id, `lead`.email;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT `lead`.*
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.id = `lead`.id COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  GROUP BY sending_log.lead_id, sending_log.id, `lead`.email;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT 
                `lead`.email,
                `lead`.phone,
                `lead`.created_at,
                `lead`.origin_id,
                `lead`.campaign_id,
                `lead`.creativity_id,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3
          AND (sending_log.created_at BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
           OR sending_log.created_at IS NULL
         ) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.email = `lead`.email COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1)
  GROUP BY sending_log.lead_id, sending_log.id, `lead`.email;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT
                `lead`.email,
                `lead`.created_at,
                `lead`.origin_id,
                `lead`.campaign_id,
                `lead`.creativity_id,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3
          AND (sending_log.created_at BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
           OR sending_log.created_at IS NULL
         ) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.email = `lead`.email COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1)
  GROUP BY sending_log.lead_id, sending_log.id, `lead`.email;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT
                `lead`.email,
                `lead`.origin_id,
                `lead`.campaign_id,
                `lead`.creativity_id,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3
          AND (sending_log.created_at BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
           OR sending_log.created_at IS NULL
         ) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.email = `lead`.email COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1)
  GROUP BY sending_log.lead_id, sending_log.id, `lead`.email;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT
                `lead`.email,
                `lead`.created_at,
                `lead`.origin_id,
                `lead`.campaign_id,
                `lead`.creativity_id,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3
          AND (sending_log.created_at BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
           OR sending_log.created_at IS NULL
         ) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.email = `lead`.email COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1)
  GROUP BY sending_log.lead_id, sending_log.id, `lead`.email, `lead`.email,
           `lead`.created_at,
           `lead`.origin_id,
           `lead`.campaign_id,
           `lead`.creativity_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT
                `lead`.email,
                `lead`.created_at,
                `lead`.origin_id,
                `lead`.campaign_id,
                `lead`.creativity_id,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3
          AND (sending_log.created_at BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
           OR sending_log.created_at IS NULL
         ) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.email = `lead`.email COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1)
  GROUP BY sending_log.lead_id, sending_log.id, `lead`.email,
           `lead`.created_at,
           `lead`.origin_id,
           `lead`.campaign_id,
           `lead`.creativity_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT
                `lead`.email,
                `lead`.created_at,
                `lead`.origin_id,
                `lead`.campaign_id,
                `lead`.creativity_id,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3
          AND (sending_log.created_at BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
           OR sending_log.created_at IS NULL
         ) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.email = `lead`.email COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1)
  GROUP BY sending_log.lead_id, sending_log.id, `lead`.email, `lead`.id,
           `lead`.created_at,
           `lead`.origin_id,
           `lead`.campaign_id,
           `lead`.creativity_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT
                `lead`.email,
                `lead`.created_at,
                `lead`.origin_id,
                `lead`.campaign_id,
                `lead`.creativity_id
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.email = `lead`.email COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  GROUP BY sending_log.lead_id, sending_log.id, `lead`.email,
           `lead`.created_at,
           `lead`.origin_id,
           `lead`.campaign_id,
           `lead`.creativity_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT
                `lead`.email,
                `lead`.created_at,
                `lead`.origin_id,
                `lead`.campaign_id,
                `lead`.creativity_id,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3
          AND (sending_log.created_at BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
           OR sending_log.created_at IS NULL
         ) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.email = `lead`.email COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  GROUP BY sending_log.lead_id, sending_log.id, `lead`.email,
           `lead`.created_at,
           `lead`.origin_id,
           `lead`.campaign_id,
           `lead`.creativity_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT
                `lead`.email,
                `lead`.created_at,
                `lead`.origin_id,
                `lead`.campaign_id,
                `lead`.creativity_id,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3
          AND (sending_log.created_at BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
           OR sending_log.created_at IS NULL
         ) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.email = `lead`.email COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  GROUP BY sending_log.lead_id, sending_log.id, `lead`.email,
           `lead`.created_at,
           `lead`.origin_id,
           `lead`.campaign_id,
           `lead`.creativity_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT
                `lead`.email,
                `lead`.created_at,
                `lead`.origin_id,
                `lead`.campaign_id,
                `lead`.creativity_id,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email
        GROUP  BY ( `lead`.email )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3
          AND (sending_log.created_at BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
           OR sending_log.created_at IS NULL
         ) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.email = `lead`.email COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  GROUP BY sending_log.lead_id, sending_log.id, `lead`.email,
           `lead`.created_at,
           `lead`.origin_id,
           `lead`.campaign_id,
           `lead`.creativity_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT
                `lead`.email,
                `lead`.created_at,
                `lead`.origin_id,
                `lead`.campaign_id,
                `lead`.creativity_id,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
        GROUP  BY ( `lead`.email )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3
          AND (sending_log.created_at BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
           OR sending_log.created_at IS NULL
         ) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.email = `lead`.email COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  GROUP BY sending_log.lead_id, sending_log.id, `lead`.email,
           `lead`.created_at,
           `lead`.origin_id,
           `lead`.campaign_id,
           `lead`.creativity_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT
                `lead`.email,
                `lead`.created_at,
                `lead`.origin_id,
                `lead`.campaign_id,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
        GROUP  BY ( `lead`.email )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3
          AND (sending_log.created_at BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
           OR sending_log.created_at IS NULL
         ) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.email = `lead`.email COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  GROUP BY sending_log.lead_id, sending_log.id, `lead`.email,
           `lead`.created_at,
           `lead`.origin_id,
           `lead`.campaign_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT `lead`.*,
        (SELECT Group_concat(sending_log.id)
         FROM   leadbox_core.sending_log
         WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
         GROUP  BY ( `lead`.email )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3
          AND (sending_log.created_at BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
           OR sending_log.created_at IS NULL
         ) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac`
                 ON `lead`.id = ac.lead_id
       LEFT JOIN leadbox_core.sending_log
                 ON sending_log.customer_id=1
       LEFT JOIN leadbox_core.action_execution as ae
                 ON ae.id=sending_log.action_execution_id
       LEFT JOIN leadbox_core.lead_filter_customer_campaign as lfc
                 ON lfc.lead_filter_id=ae.filter_id
WHERE sending_log.email = `lead`.email COLLATE utf8_general_ci
  AND (lfc.campaign_id=1 OR lfc.campaign_id IS NULL)
  AND `lead`.created_at BETWEEN '2019-06-01 00:00:00' AND '2019-06-03 00:00:00'
  AND (sending_log.created_at NOT BETWEEN '2019-05-03 00:00:00' AND '2019-06-03 00:00:00')
   OR sending_log.created_at IS NULL
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1)
  GROUP BY sending_log.lead_id, sending_log.id, `lead`.id, `lead`.email;
;-- -. . -..- - / . -. - .-. -.--
SELECT `lead`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac` ON `lead`.id = ac.lead_id 
WHERE `lead`.created_at BETWEEN '2019-05-30 11:28:39' AND '2019-06-04 07:28:39'  
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1) GROUP BY `lead`.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT `lead`.*,
       (SELECT Group_concat(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.lead_id = `lead`.id
        GROUP  BY ( `lead`.id )) AS sending_logs,
       (SELECT Count(sending_log.id)
        FROM   leadbox_core.sending_log
        WHERE  sending_log.email = `lead`.email COLLATE utf8_general_ci
          AND sending_log.customer_id = 1
          AND sending_log.status < 3) AS virtual_fields
FROM leadbox_lead_es.lead
       LEFT JOIN leadbox_lead_es.`accepted_customer` AS `ac` ON `lead`.id = ac.lead_id
WHERE `lead`.created_at BETWEEN '2019-05-30 11:28:39' AND '2019-06-05 07:28:39'
  AND `lead`.campaign_id IN (1)  AND ac.customer_id IN (1) GROUP BY `lead`.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM leadbox_lead_es.`lead`
GROUP BY email;
;-- -. . -..- - / . -. - .-. -.--
SELECT campaign.id,
       creativity.id,
       campaign.type
FROM leadbox_core.campaign
INNER JOIN campaign_customer cc
  ON campaign.id = cc.campaign_id
INNER JOIN lead_filter_customer_campaign lfcc
  ON campaign.id = lfcc.campaign_id
  AND cc.customer_id = lfcc.customer_id
INNER JOIN purchase_order po
  ON campaign.id = po.campaign_id
  AND cc.customer_id = po.customer_id
  AND lfcc.lead_filter_id = po.f;
;-- -. . -..- - / . -. - .-. -.--
SELECT campaign.id,
       creativity.id,
       campaign.type
FROM leadbox_core.campaign
INNER JOIN campaign_customer cc
  ON campaign.id = cc.campaign_id
INNER JOIN lead_filter_customer_campaign lfcc
  ON campaign.id = lfcc.campaign_id
  AND cc.customer_id = lfcc.customer_id
INNER JOIN purchase_order po
  ON campaign.id = po.campaign_id
  AND cc.customer_id = po.customer_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT campaign.id,
       campaign.type
FROM leadbox_core.campaign
INNER JOIN campaign_customer cc
  ON campaign.id = cc.campaign_id
INNER JOIN lead_filter_customer_campaign lfcc
  ON campaign.id = lfcc.campaign_id
  AND cc.customer_id = lfcc.customer_id
INNER JOIN purchase_order po
  ON campaign.id = po.campaign_id
  AND cc.customer_id = po.customer_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT campaign.id,
       campaign.type
FROM leadbox_core.campaign
INNER JOIN campaign_customer cc
  ON campaign.id = cc.campaign_id
INNER JOIN lead_filter_customer_campaign lfcc
  ON campaign.id = lfcc.campaign_id
  AND cc.customer_id = lfcc.customer_id
INNER JOIN purchase_order po
  ON campaign.id = po.campaign_id
  AND cc.customer_id = po.customer_id
WHERE id IS NOT NULL;
;-- -. . -..- - / . -. - .-. -.--
SELECT campaign.id
FROM leadbox_core.campaign
INNER JOIN campaign_customer cc
  ON campaign.id = cc.campaign_id
INNER JOIN lead_filter_customer_campaign lfcc
  ON campaign.id = lfcc.campaign_id
  AND cc.customer_id = lfcc.customer_id
INNER JOIN purchase_order po
  ON campaign.id = po.campaign_id
  AND cc.customer_id = po.customer_id
WHERE id IS NOT NULL;
;-- -. . -..- - / . -. - .-. -.--
SELECT campaign.id
FROM leadbox_core.campaign
INNER JOIN campaign_customer cc
  ON campaign.id = cc.campaign_id
INNER JOIN lead_filter_customer_campaign lfcc
  ON campaign.id = lfcc.campaign_id
  AND cc.customer_id = lfcc.customer_id
INNER JOIN purchase_order po
  ON campaign.id = po.campaign_id
  AND cc.customer_id = po.customer_id
WHERE campaign.id IS NOT NULL;
;-- -. . -..- - / . -. - .-. -.--
SELECT campaign.id, campaign.type_campaign
FROM leadbox_core.campaign
INNER JOIN campaign_customer cc
  ON campaign.id = cc.campaign_id
INNER JOIN lead_filter_customer_campaign lfcc
  ON campaign.id = lfcc.campaign_id
  AND cc.customer_id = lfcc.customer_id
INNER JOIN purchase_order po
  ON campaign.id = po.campaign_id
  AND cc.customer_id = po.customer_id
WHERE campaign.id IS NOT NULL;
;-- -. . -..- - / . -. - .-. -.--
SELECT campaign.id, campaign.type_campaign, po.id
FROM leadbox_core.campaign
INNER JOIN campaign_customer cc
  ON campaign.id = cc.campaign_id
INNER JOIN lead_filter_customer_campaign lfcc
  ON campaign.id = lfcc.campaign_id
  AND cc.customer_id = lfcc.customer_id
INNER JOIN purchase_order po
  ON campaign.id = po.campaign_id
  AND cc.customer_id = po.customer_id
WHERE campaign.id IS NOT NULL;
;-- -. . -..- - / . -. - .-. -.--
SELECT campaign.id, campaign.type_campaign, po.id
FROM leadbox_core.campaign
INNER JOIN campaign_customer cc
  ON campaign.id = cc.campaign_id
INNER JOIN lead_filter_customer_campaign lfcc
  ON campaign.id = lfcc.campaign_id
  AND cc.customer_id = lfcc.customer_id
INNER JOIN purchase_order po
  ON campaign.id = po.campaign_id
  AND cc.customer_id = po.customer_id
INNER JOIN purchase_price_ranges ppr 
  ON po.id = ppr.purchase_order_id
WHERE campaign.id IS NOT NULL;
;-- -. . -..- - / . -. - .-. -.--
SELECT campaign.id, campaign.type_campaign, po.id
FROM leadbox_core.campaign
INNER JOIN campaign_customer cc
  ON campaign.id = cc.campaign_id
INNER JOIN lead_filter_customer_campaign lfcc
  ON campaign.id = lfcc.campaign_id
  AND cc.customer_id = lfcc.customer_id
INNER JOIN purchase_order po
  ON campaign.id = po.campaign_id
  AND cc.customer_id = po.customer_id
INNER JOIN purchase_price_ranges ppr
  ON po.id = ppr.purchase_order_id
WHERE campaign.id IS NOT NULL;
;-- -. . -..- - / . -. - .-. -.--
SELECT campaign.id, campaign.type_campaign, ppr.range_price_corregistro, ppr.range_price_co_sponsoring
FROM leadbox_core.campaign
INNER JOIN campaign_customer cc
  ON campaign.id = cc.campaign_id
INNER JOIN lead_filter_customer_campaign lfcc
  ON campaign.id = lfcc.campaign_id
  AND cc.customer_id = lfcc.customer_id
INNER JOIN purchase_order po
  ON campaign.id = po.campaign_id
  AND cc.customer_id = po.customer_id
INNER JOIN purchase_price_ranges ppr
  ON po.id = ppr.purchase_order_id
WHERE campaign.id IS NOT NULL
GROUP BY campaign.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT campaign.id, campaign.type_campaign, ppr.range_price_corregistro, ppr.range_price_co_sponsoring
FROM leadbox_core.campaign
INNER JOIN campaign_customer cc
  ON campaign.id = cc.campaign_id
INNER JOIN lead_filter_customer_campaign lfcc
  ON campaign.id = lfcc.campaign_id
  AND cc.customer_id = lfcc.customer_id
INNER JOIN purchase_order po
  ON campaign.id = po.campaign_id
  AND cc.customer_id = po.customer_id
INNER JOIN purchase_price_ranges ppr
  ON po.id = ppr.purchase_order_id
WHERE campaign.id IS NOT NULL;
;-- -. . -..- - / . -. - .-. -.--
SELECT campaign.id, campaign.type_campaign, AVG(ppr.range_price_corregistro), AVG(ppr.range_price_co_sponsoring)
FROM leadbox_core.campaign
INNER JOIN campaign_customer cc
  ON campaign.id = cc.campaign_id
INNER JOIN lead_filter_customer_campaign lfcc
  ON campaign.id = lfcc.campaign_id
  AND cc.customer_id = lfcc.customer_id
INNER JOIN purchase_order po
  ON campaign.id = po.campaign_id
  AND cc.customer_id = po.customer_id
INNER JOIN purchase_price_ranges ppr
  ON po.id = ppr.purchase_order_id
WHERE campaign.id IS NOT NULL;
;-- -. . -..- - / . -. - .-. -.--
SELECT 
       campaign.id, 
       campaign.type_campaign, 
       AVG(ppr.range_price_corregistro), 
       AVG(ppr.range_price_co_sponsoring)
FROM leadbox_core.campaign
INNER JOIN campaign_customer cc
  ON campaign.id = cc.campaign_id
INNER JOIN lead_filter_customer_campaign lfcc
  ON campaign.id = lfcc.campaign_id
  AND cc.customer_id = lfcc.customer_id
INNER JOIN purchase_order po
  ON campaign.id = po.campaign_id
  AND cc.customer_id = po.customer_id
INNER JOIN purchase_price_ranges ppr
  ON po.id = ppr.purchase_order_id
WHERE campaign.id IS NOT NULL
GROUP BY campaign.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT
       campaign.id,
       campaign.type_campaign,
       AVG(ppr.range_price_corregistro),
       AVG(ppr.range_price_co_sponsoring)
FROM leadbox_core.campaign
INNER JOIN campaign_customer cc
  ON campaign.id = cc.campaign_id
INNER JOIN lead_filter_customer_campaign lfcc
  ON campaign.id = lfcc.campaign_id
  AND cc.customer_id = lfcc.customer_id
INNER JOIN purchase_order po
  ON campaign.id = po.campaign_id
  AND cc.customer_id = po.customer_id
INNER JOIN purchase_price_ranges ppr
  ON po.id = ppr.purchase_order_id
WHERE campaign.id IS NOT NULL
GROUP BY campaign.id, campaign.type_campaign;
;-- -. . -..- - / . -. - .-. -.--
SELECT
       campaign.id,
       campaign.name,
       campaign.type_campaign,
       AVG(ppr.range_price_corregistro),
       AVG(ppr.range_price_co_sponsoring)
FROM leadbox_core.campaign
INNER JOIN campaign_customer cc
  ON campaign.id = cc.campaign_id
INNER JOIN lead_filter_customer_campaign lfcc
  ON campaign.id = lfcc.campaign_id
  AND cc.customer_id = lfcc.customer_id
INNER JOIN purchase_order po
  ON campaign.id = po.campaign_id
  AND cc.customer_id = po.customer_id
INNER JOIN purchase_price_ranges ppr
  ON po.id = ppr.purchase_order_id
WHERE campaign.id IS NOT NULL
GROUP BY campaign.id, campaign.type_campaign;
;-- -. . -..- - / . -. - .-. -.--
SELECT
       campaign.id,
       campaign.name,
       campaign.type_campaign,
       AVG(ppr.range_price_corregistro),
       AVG(ppr.range_price_co_sponsoring)
FROM leadbox_core.campaign
INNER JOIN campaign_customer cc
  ON campaign.id = cc.campaign_id
INNER JOIN lead_filter_customer_campaign lfcc
  ON campaign.id = lfcc.campaign_id
  AND cc.customer_id = lfcc.customer_id
INNER JOIN purchase_order po
  ON campaign.id = po.campaign_id
  AND cc.customer_id = po.customer_id
INNER JOIN purchase_price_ranges ppr
  ON po.id = ppr.purchase_order_id
GROUP BY campaign.id, campaign.type_campaign;
;-- -. . -..- - / . -. - .-. -.--
SELECT
       campaign.id,
       campaign.name,
       campaign.type_campaign,
       AVG(DISTINCT ppr.range_price_corregistro),
       AVG(DISTINCT ppr.range_price_co_sponsoring)
FROM leadbox_core.campaign
INNER JOIN campaign_customer cc
  ON campaign.id = cc.campaign_id
INNER JOIN lead_filter_customer_campaign lfcc
  ON campaign.id = lfcc.campaign_id
  AND cc.customer_id = lfcc.customer_id
INNER JOIN purchase_order po
  ON campaign.id = po.campaign_id
  AND cc.customer_id = po.customer_id
INNER JOIN purchase_price_ranges ppr
  ON po.id = ppr.purchase_order_id
WHERE campaign.id IS NOT NULL
GROUP BY campaign.id, campaign.type_campaign;
;-- -. . -..- - / . -. - .-. -.--
SELECT
  cam.id,
  cam.name,
  cam.type_campaign,
  AVG(DISTINCT ppr.range_price_corregistro),
  AVG(DISTINCT ppr.range_price_co_sponsoring)
FROM leadbox_core.campaign cam
INNER JOIN campaign_customer cc
  ON cam.id = cc.campaign_id
INNER JOIN lead_filter_customer_campaign lfcc
  ON cam.id = lfcc.campaign_id
  AND cc.customer_id = lfcc.customer_id
INNER JOIN purchase_order po
  ON cam.id = po.campaign_id
  AND cc.customer_id = po.customer_id
INNER JOIN purchase_price_ranges ppr
  ON po.id = ppr.purchase_order_id
INNER JOIN leadbox_lead_es.`lead` l
  ON l.campaign_id = cam.id
INNER JOIN leadbox_lead_es.accepted_customer ac
  ON l.id = ac.lead_id 
  AND cc.customer_id = ac.customer_id
WHERE cam.id IS NOT NULL
GROUP BY cam.id, cam.type_campaign;
;-- -. . -..- - / . -. - .-. -.--
SELECT
  cam.id,
  cam.name,
  cam.type_campaign,
  AVG(DISTINCT ppr.range_price_corregistro),
  AVG(DISTINCT ppr.range_price_co_sponsoring)
FROM leadbox_core.campaign cam
INNER JOIN campaign_customer cc
  ON cam.id = cc.campaign_id
INNER JOIN lead_filter_customer_campaign lfcc
  ON cam.id = lfcc.campaign_id
  AND cc.customer_id = lfcc.customer_id
INNER JOIN purchase_order po
  ON cam.id = po.campaign_id
  AND cc.customer_id = po.customer_id
INNER JOIN purchase_price_ranges ppr
  ON po.id = ppr.purchase_order_id
INNER JOIN leadbox_lead_es.`lead` l
  ON l.campaign_id = cam.id
INNER JOIN leadbox_lead_es.accepted_customer ac
  ON l.id = ac.lead_id
  AND cc.customer_id = ac.customer_id
WHERE cam.id IS NOT NULL
GROUP BY cam.id, cam.type_campaign;
;-- -. . -..- - / . -. - .-. -.--
SELECT
  cam.id,
  cam.name,
  cam.type_campaign,
  AVG(DISTINCT ppr.range_price_corregistro),
  AVG(DISTINCT ppr.range_price_co_sponsoring)
FROM leadbox_core.campaign cam
INNER JOIN campaign_customer cc
  ON cam.id = cc.campaign_id
INNER JOIN lead_filter_customer_campaign lfcc
  ON cam.id = lfcc.campaign_id
  AND cc.customer_id = lfcc.customer_id
INNER JOIN purchase_order po
  ON cam.id = po.campaign_id
  AND cc.customer_id = po.customer_id
INNER JOIN purchase_price_ranges ppr
  ON po.id = ppr.purchase_order_id
INNER JOIN leadbox_lead_es.`lead` l
  ON l.campaign_id = cam.id
LEFT JOIN leadbox_lead_es.accepted_customer ac
  ON l.id = ac.lead_id
  AND cc.customer_id = ac.customer_id
WHERE cam.id IS NOT NULL
GROUP BY cam.id, cam.type_campaign;
;-- -. . -..- - / . -. - .-. -.--
SELECT
  cam.id,
  cam.name,
  cam.type_campaign,
  AVG(DISTINCT ppr.range_price_corregistro),
  AVG(DISTINCT ppr.range_price_co_sponsoring),
  COUNT(sl.id) as LeadsOk,
  COUNT(ac.id) as Preguntas
FROM leadbox_core.campaign cam
INNER JOIN campaign_customer cc
  ON cam.id = cc.campaign_id
INNER JOIN lead_filter_customer_campaign lfcc
  ON cam.id = lfcc.campaign_id
  AND cc.customer_id = lfcc.customer_id
INNER JOIN purchase_order po
  ON cam.id = po.campaign_id
  AND cc.customer_id = po.customer_id
INNER JOIN purchase_price_ranges ppr
  ON po.id = ppr.purchase_order_id
INNER JOIN leadbox_lead_es.`lead` l
  ON l.campaign_id = cam.id
LEFT JOIN leadbox_lead_es.accepted_customer ac
  ON l.id = ac.lead_id
  AND cc.customer_id = ac.customer_id
LEFT JOIN sending_log sl
  ON sl.customer_id = cc.customer_id
  AND l.id = sl.lead_id
  AND sl.status = 1
WHERE cam.id IS NOT NULL
GROUP BY cam.id, cam.type_campaign;
;-- -. . -..- - / . -. - .-. -.--
SELECT
  cam.id,
  cam.name,
  cam.type_campaign,
  AVG(DISTINCT ppr.range_price_corregistro),
  AVG(DISTINCT ppr.range_price_co_sponsoring),
  COUNT(sl.id) as LeadsOk
FROM leadbox_core.campaign cam
INNER JOIN campaign_customer cc
  ON cam.id = cc.campaign_id
INNER JOIN lead_filter_customer_campaign lfcc
  ON cam.id = lfcc.campaign_id
  AND cc.customer_id = lfcc.customer_id
INNER JOIN purchase_order po
  ON cam.id = po.campaign_id
  AND cc.customer_id = po.customer_id
INNER JOIN purchase_price_ranges ppr
  ON po.id = ppr.purchase_order_id
INNER JOIN leadbox_lead_es.`lead` l
  ON l.campaign_id = cam.id
LEFT JOIN leadbox_lead_es.accepted_customer ac
  ON l.id = ac.lead_id
  AND cc.customer_id = ac.customer_id
LEFT JOIN sending_log sl
  ON sl.customer_id = cc.customer_id
  AND l.id = sl.lead_id
  AND sl.status = 1
WHERE cam.id IS NOT NULL
GROUP BY cam.id, cam.type_campaign;
;-- -. . -..- - / . -. - .-. -.--
SELECT
  cam.id,
  cam.name,
  cam.type_campaign,
  AVG(DISTINCT ppr.range_price_corregistro),
  AVG(DISTINCT ppr.range_price_co_sponsoring),
  COUNT(sl.id) as LeadsOk,
  COUNT(ac.lead_id) as Preguntas
FROM leadbox_core.campaign cam
INNER JOIN campaign_customer cc
  ON cam.id = cc.campaign_id
INNER JOIN lead_filter_customer_campaign lfcc
  ON cam.id = lfcc.campaign_id
  AND cc.customer_id = lfcc.customer_id
INNER JOIN purchase_order po
  ON cam.id = po.campaign_id
  AND cc.customer_id = po.customer_id
INNER JOIN purchase_price_ranges ppr
  ON po.id = ppr.purchase_order_id
INNER JOIN leadbox_lead_es.`lead` l
  ON l.campaign_id = cam.id
LEFT JOIN leadbox_lead_es.accepted_customer ac
  ON l.id = ac.lead_id
  AND cc.customer_id = ac.customer_id
LEFT JOIN sending_log sl
  ON sl.customer_id = cc.customer_id
  AND l.id = sl.lead_id
  AND sl.status = 1
WHERE cam.id IS NOT NULL
GROUP BY cam.id, cam.type_campaign;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       cam.id as id_campaign,
       cou.name_en as name_country,
       p.currency,
       AVG(DISTINCT p.cpc) as cpc,
       AVG(DISTINCT p.cpl) as cpl,
       AVG(DISTINCT p.cpm) as cpm,
       count(case when sl.status =1 and l.dedup=0 then 1 end) AS ok,
       (SELECT count(customer_id)
        FROM leadbox_lead_es.accepted_customer as acce
               INNER JOIN leadbox_lead_es.lead as l
                          ON l.id=acce.lead_id
        WHERE l.id = acce.lead_id
          AND l.campaign_id = cam.id
          AND l.created_at BETWEEN "2019-05-01 00:00:00" AND "2019-06-30 00:00:00"
       ) as totalQuestions,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN "2019-05-01 00:00:00" AND "2019-06-30 00:00:00"
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN "2019-05-01 00:00:00" AND "2019-06-30 00:00:00"
       ) as totalImpressions,
       (SELECT count(id)
        FROM leadbox_lead_es.lead
        WHERE campaign_id = cam.id
          AND creativity_id = cr.id
          AND lead.created_at BETWEEN "2019-05-01 00:00:00" AND "2019-06-30 00:00:00"
       ) as totalLeads,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.date BETWEEN "2019-05-01 00:00:00" AND "2019-06-30 00:00:00"
       ) as volumen,
       cr.name as name_creativity,
       AVG(DISTINCT ppr.range_price_corregistro) as paysale_corregistro,
       AVG(DISTINCT ppr.range_price_co_sponsoring) as paysale_co_sponsoring
FROM campaign as cam
       JOIN tracking_impressions as tri
            ON cam.id=tri.campaign_id
       JOIN tracking_clicks as trc
            ON cam.id=trc.campaign_id
       JOIN leadbox_lead_es.lead as l
            ON cam.id=l.campaign_id
       JOIN sending_log AS sl
            ON sl.lead_id=l.id
       JOIN country as cou
            ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
       JOIN creativity as cr
            ON l.creativity_id=cr.id
       JOIN leadbox_lead_es.lead_cost lc
            ON lc.lead_id = l.id
       JOIN payouts p
            ON p.id = lc.payout_id
              AND p.cpc != 0 AND p.cpl != 0 AND p.cpm != 0
       JOIN campaign_customer cc
            ON cam.id = cc.campaign_id
       JOIN lead_filter_customer_campaign lfcc
            ON cam.id = lfcc.campaign_id
              AND cc.customer_id = lfcc.customer_id
       JOIN purchase_order po
            ON cam.id = po.campaign_id
              AND cc.customer_id = po.customer_id
       JOIN purchase_price_ranges ppr
            ON po.id = ppr.purchase_order_id
WHERE tri.unique_impression=1
  AND trc.unique_click=1
  AND l.created_at BETWEEN "2019-05-01 00:00:00" AND "2019-06-30 00:00:00"
GROUP BY cam.name, cr.name, cam.type_campaign, cam.id, name_country, cr.id, currency;
;-- -. . -..- - / . -. - .-. -.--
SELECT cam.name as name_campaign,
       cam.id as cam_id,
       cam.type_campaign as type_campaign,
       cr.name as name_creativity,
       org.name as name_origin,
       cou.name_en as name_country,
       pbl.name as name_publisher,
       (SELECT  AVG(ppr2.range_price_corregistro)
        FROM purchase_price_ranges  as ppr2
               INNER JOIN purchase_order as po2 on po2.id=ppr2.purchase_order_id
        WHERE po2.campaign_id=cam.id
          AND po2.end_date >=  "2019-06-30 00:00:00" AND  (po2.start_date <="2019-07-31 00:00:00"  OR po2.end_date IS NULL
          ) )as paysale_corregistro,
       (SELECT  AVG(ppr2.range_price_co_sponsoring)
        FROM purchase_price_ranges  as ppr2
               INNER JOIN purchase_order as po2 on po2.id=ppr2.purchase_order_id
        WHERE po2.campaign_id=cam.id
          AND po2.end_date >=  "2019-06-30 00:00:00" AND  (po2.start_date <="2019-07-31 00:00:00"  OR po2.end_date IS NULL
          ) ) as paysale_co_sponsoring,
       p.currency,
       ( SELECT  AVG(py2.cpc) FROM payouts as py2
                                     INNER JOIN leadbox_lead_es.lead as le2
                                     INNER JOIN sending_log as sl2 ON sl2.lead_id = le2.id
         where py2.campaign_id=cam.id
           AND le2.campaign_id=cam.id
           AND le2.created_at BETWEEN "2019-06-30 00:00:00" AND "2019-07-31 00:00:00"
           AND sl2.status=1 ) as cpc,
       ( SELECT  AVG(py2.cpl) FROM payouts as py2
                                     INNER JOIN leadbox_lead_es.lead as le2
                                     INNER JOIN sending_log as sl2 ON sl2.lead_id = le2.id
         where py2.campaign_id=cam.id
           AND le2.campaign_id=cam.id
           AND le2.created_at BETWEEN "2019-06-30 00:00:00" AND "2019-07-31 00:00:00"
           AND sl2.status=1 ) as cpl,
       AVG(DISTINCT p.cpm) as cpm,
       (SELECT count(id)
        FROM tracking_clicks
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_clicks.created_at BETWEEN "2019-06-30 00:00:00" AND "2019-07-31 00:00:00"
          AND tracking_clicks.unique_click=1
       ) as totalClicks,
       (SELECT count(id)
        FROM tracking_impressions
        WHERE campaign_id = cam.id
          AND origin_id = org.id
          AND creativity_id = cr.id
          AND tracking_impressions.created_at BETWEEN "2019-06-30 00:00:00" AND "2019-07-31 00:00:00"
          AND tracking_impressions.unique_impression=1
       ) as totalImpressions,
       (SELECT count(l.id)
        FROM leadbox_lead_es.lead l
               INNER JOIN sending_log sl ON sl.lead_id = l.id
               INNER JOIN action_execution as ac on ac.id= sl.action_execution_id
               INNER JOIN lead_filter as lf ON lf.id= ac.filter_id
        WHERE l.campaign_id = cam.id
          AND l.origin_id=org.id
          AND l.created_at BETWEEN "2019-06-30 00:00:00" AND "2019-07-31 00:00:00"
       ) as totalLeadsBrutos,
       (SELECT count(rl.id)
        FROM request_log as rl
        WHERE rl.campaign_id=cam.id
          AND rl.provider_id=org.id
          AND rl.created_at BETWEEN "2019-06-30 00:00:00" AND "2019-07-31 00:00:00" )
         as totalRequest,
       (SELECT count(l1.id)
        FROM leadbox_lead_es.lead as l1
               INNER JOIN sending_log as sl1
                          ON sl1.lead_id=l1.id
        WHERE campaign_id = cam.id
          AND l1.origin_id = org.id
          AND l1.creativity_id = cr.id
          AND sl1.status = 1
          AND l1.created_at BETWEEN "2019-06-30 00:00:00" AND "2019-07-31 00:00:00"
       ) as totalLeads,
       (SELECT count(l1.id)
        FROM leadbox_lead_es.lead as l1
               INNER JOIN sending_log as sl1
                          ON sl1.lead_id=l1.id
        WHERE l1.campaign_id = cam.id
          AND l1.dedup=0
          AND sl1.status = 1
          AND l1.origin_id = org.id
          AND l1.creativity_id = cr.id) as pixelLeads,
       (SELECT count(*)
        FROM leadbox_lead_es.accepted_customer as acc
               INNER JOIN leadbox_lead_es.lead as l ON acc.lead_id = l.id
               INNER JOIN sending_log as sl ON sl.lead_id = l.id AND sl.customer_id = acc.customer_id
        WHERE l.campaign_id =cam.id
          AND l.origin_id=org.id
          AND status=1
          AND l.created_at BETWEEN "2019-06-30 00:00:00" AND "2019-07-31 00:00:00"
       ) as totalLeadsCorregistry,
       (SELECT count(l.id)
        FROM leadbox_lead_es.lead l
               INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
               INNER JOIN action_execution as ac on ac.id= sl.action_execution_id
               INNER JOIN lead_filter as lf ON lf.id= ac.filter_id AND lf.is_coregistry=0
        WHERE l.campaign_id = cam.id
          AND l.origin_id=org.id
          AND l.created_at BETWEEN "2019-06-30 00:00:00" AND "2019-07-31 00:00:00"
       ) as totalLeadsSponsor,
       (SELECT count(l.id)
        FROM leadbox_lead_es.lead l
               INNER JOIN sending_log sl ON sl.lead_id = l.id AND sl.status = 1
               INNER JOIN action_execution as ac on ac.id= sl.action_execution_id
               INNER JOIN lead_filter as lf ON lf.id= ac.filter_id AND lf.is_coregistry=0
        WHERE l.campaign_id = cam.id
          AND l.origin_id=org.id
          AND l.dedup=0
          AND l.created_at BETWEEN "2019-06-30 00:00:00" AND "2019-07-31 00:00:00"
       ) as totalLeadsSponsorWithPixel,
       (SELECT
          sum( pl.volume)
        FROM planning as pl
        WHERE pl.campaign_id = cam.id
          AND pl.sended=1
          AND pl.origin_id=org.id
          AND pl.date BETWEEN "2019-06-30 00:00:00" AND "2019-07-31 00:00:00"
       ) as volumen,
       cr.name as name_creativity
FROM campaign as cam
       INNER JOIN leadbox_lead_es.lead as l
                  ON cam.id=l.campaign_id
       INNER JOIN sending_log AS sl
                  ON sl.lead_id=l.id
       INNER JOIN origin as org
                  ON l.origin_id=org.id
       LEFT JOIN publisher as pbl
                 ON pbl.id=org.publisher_id
       INNER JOIN country as cou
                  ON UPPER(l.catchment_country)=cou.country_code COLLATE utf8_general_ci
       LEFT JOIN creativity as cr
                 ON l.creativity_id=cr.id
       INNER JOIN lead_filter_customer_campaign lfcc
                  ON lfcc.customer_id = sl.customer_id
       INNER JOIN lead_filter lf
                  ON lfcc.lead_filter_id = lf.id
       INNER JOIN purchase_order po
                  ON po.campaign_id = lfcc.campaign_id
                    AND po.customer_id = lfcc.customer_id
       INNER JOIN purchase_price_ranges ppp
                  ON ppp.purchase_order_id = po.id
       INNER JOIN leadbox_lead_es.lead_cost lc
                  ON lc.lead_id = l.id
       INNER JOIN payouts p
                  ON p.id = lc.payout_id
                    AND p.cpc != 0 AND p.cpl != 0 AND p.cpm != 0
WHERE l.created_at BETWEEN "2019-06-30 00:00:00" AND "2019-07-31 00:00:00"
GROUP BY cam.name, cr.name, cam.type_campaign, org.name, pbl.name, cam.id, org.id, name_country, cr.id, currency, totalRequest,totalLeads
ORDER BY cam.id, cr.id, org.id ASC;
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM leadbox_lead_es;
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM leadbox_lead_es.accepted_customer;
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM leadbox_lead_es.declined_customer;
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM leadbox_lead_es.ignored_customer;
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM leadbox_lead_es.lead_category;
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM leadbox_lead_es.lead_cost;
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM leadbox_lead_es.lead_data_attribute;
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM leadbox_lead_es.`lead`;
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM leadbox_lead_fr.accepted_customer;
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM leadbox_lead_fr.declined_customer;
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM leadbox_lead_fr.ignored_customer;
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM leadbox_lead_fr.lead_category;
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM leadbox_lead_fr.lead_cost;
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM leadbox_lead_fr.lead_data_attribute;
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM leadbox_lead_fr.`lead`;