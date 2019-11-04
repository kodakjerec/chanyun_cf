//SELECT * FROM dbo.cft16;
//	WHERE t1601 LIKE 'S1018%';

SELECT * FROM dbo.cft38
	WHERE t3801 in ('104S1101', '104S1102', '102S1102', '107S1101', '107S1102', '107S1103');

//SELECT t0301, t0303, t0304, t0305, t0306, t0307, IsNull(t0314, 0)
////	INTO :ls_prod_id,:t0303,:t0304,:t0305,:t0306,:t0307,:ll_t0314
// 	FROM cft03  
//	WHERE (t0310 <= '2018/08/23') 
//		AND (SubString(t0301, 1, 2) = '18') 
//		and (IsNull(t0311, GetDate()) >= '2018/08/23') 
//		AND (SubString(t0301, 4, 1) = '0' )  
//		AND (SubString(t0301, 3, 1) = 'S');