-- 1. ������а�(�а��ڵ� 002) �л����� �й��� �̸�, ���� �⵵�� ���� �⵵�� ���� ������
--    ǥ���ϴ� SQL ������ �ۼ��Ͻÿ�.(��, ����� "�й�", "�̸�", "���г⵵"�� ǥ�õǵ��� �Ѵ�.)
SELECT STUDENT_NO AS "�й�", STUDENT_NAME AS "�̸�", ENTRANCE_DATE AS "���г⵵"
FROM TB_STUDENT
WHERE DEPARTMENT_NO = '002'
ORDER BY ENTRANCE_DATE ASC;

-- 2. �� ������б��� ���� �� �̸��� �� ���ڰ� �ƴ� ������ �� �� �ִٰ� �Ѵ�. �� ������ �̸���
--    �ֹι�ȣ�� ȭ�鿡 ����ϴ� SQL ������ �ۼ��� ����. (* �̶� �ùٸ��� �ۼ��� SQL ������
--    ��� ���� ����� �ٸ��� ���� �� �ִ�. ������ �������� �����غ� ��)
SELECT PROFESSOR_NAME, PROFESSOR_SSN
FROM TB_PROFESSOR
WHERE NOT PROFESSOR_NAME LIKE '___';

-- 3. �� ������б��� ���� �������� �̸��� ���̸� ����ϴ� SQL ������ �ۼ��Ͻÿ�. ��, �̶�
--    �̶� ���̰� ���� ������� ���� ��� ������ ȭ�鿡 ��µǵ��� ����ÿ�.(��, ���� �� 2000��
--    ���� ����ڴ� ������ ��� ����� "�����̸�", "����"�� �Ѵ�. ���̴� '��'���� ����Ѵ�.)
SELECT PROFESSOR_NAME AS "�����̸�",
 EXTRACT(YEAR FROM SYSDATE) -
        CASE
            WHEN SUBSTR(PROFESSOR_SSN, 1, 2) >= '50' THEN 1900 + TO_NUMBER(SUBSTR(PROFESSOR_SSN, 1, 2))
            ELSE 2000 + TO_NUMBER(SUBSTR(PROFESSOR_SSN, 1, 2))
            END AS "����"
FROM TB_PROFESSOR
WHERE SUBSTR(PROFESSOR_SSN, 8, 1) = '1'
ORDER BY ���� ASC;

-- 4. �������� �̸� �� ���� ������ �̸��� ����ϴ� SQL ������ �ۼ��Ͻÿ�. ��� ����� "�̸�"
--    �� �������� �Ѵ�.(���� 2���� ���� ������ ���ٰ� �����Ͻÿ�)
SELECT SUBSTR(PROFESSOR_NAME, 2, 2) AS "�̸�"
FROM TB_PROFESSOR;

-- 5. �� ������б��� ����� �����ڸ� ���Ϸ��� �Ѵ�. ��� ã�Ƴ� ���ΰ�? �̶�, 19�쿡
--    �����ϸ� ����� ���� ���� ������ �����Ѵ�.
SELECT STUDENT_NO, STUDENT_NAME
FROM TB_STUDENT
WHERE TO_DATE(SUBSTR(STUDENT_SSN, 1, 2), 'YY') - ENTRANCE_DATE >= '19';

-- 6. 2020�� ũ���������� ���� �����ΰ�?
SELECT TO_CHAR(TO_DATE('2020-12-25', 'YYYY-MM-DD'), 'DAY') AS ����
FROM DUAL;

-- 7. TO_DATE('99/10/11', 'YY/MM/DD'), TO_DATE('49/10/11', 'YY/MM/DD')�� ����
--    �� �� �� �� �� ���� �ǹ��ұ�? �� TO_DATE('99/10/11', 'RR/MM/DD'),
--    TO_DATE('49/10/11', 'RR/MM/DD')�� ���� �� �� �� �� �� ���� �ǹ��ұ�?
-- 99��10��11��, 49��10��11��
SELECT TO_DATE('99/10/11', 'YY/MM/DD') FROM DUAL; -- 1999�� 10�� 11��
SELECT TO_DATE('49/10/11', 'YY/MM/DD') FROM DUAL; -- 2049�� 10�� 11��
SELECT TO_DATE('99/10/11', 'RR/MM/DD') FROM DUAL; -- 1999�� 10�� 11��
SELECT TO_DATE('49/10/11', 'RR/MM/DD') FROM DUAL; -- 1949�� 10�� 11��

-- 8. �� ������б��� 2000 �⵵ ���� �����ڵ��� �й��� A�� �����ϰ� �Ǿ��ִ�. 2000�⵵
--    ���� �й��� ���� �л����� �й��� �̸��� �����ִ� SQL ������ �ۼ��Ͻÿ�.
SELECT STUDENT_NO, STUDENT_NAME
FROM TB_STUDENT
WHERE ENTRANCE_DATE < '00/01/01';

-- 9. �й��� A517178 �� �ѾƸ� �л��� �л��� ���� �� ������ ���ϴ� SQL ���� �ۼ��Ͻÿ�. ��,
--    �̶� ��� ȭ���� ����� "����"�̶�� ������ �ϰ�, ������ �ݿø��Ͽ� �Ҽ��� ���� ���ڸ�������
--    ǥ���Ѵ�.
SELECT ROUND(AVG(POINT),1) AS "����"
FROM TB_GRADE
WHERE STUDENT_NO = 'A517178';

-- 10. �а��� �л����� ���Ͽ� "�а���ȣ", "�л���(��)"�� ���·� ����� ����� �������
--    ��µǵ��� �Ͻÿ�.
SELECT DISTINCT DEPARTMENT_NO AS "�а���ȣ", COUNT(DEPARTMENT_NO) AS "�л���(��)"
FROM TB_STUDENT
GROUP BY DEPARTMENT_NO
ORDER BY DEPARTMENT_NO ASC;

-- 11. ���� ������ �������� ���� �л��� ���� �� �� ���� �Ǵ��� �˾Ƴ��� SQL ���� �ۼ��Ͻÿ�,
SELECT COUNT(*)
FROM TB_STUDENT
WHERE COACH_PROFESSOR_NO IS NULL;

-- 12. �й��� A112113�� ���� �л��� �⵵ �� ������ ���ϴ� SQL ���� �ۼ��Ͻÿ�. ��, �̶�
--     ��� ȭ���� ����� "�⵵", "�⵵ �� ����" �̶�� ������ �ϰ�, ������ �ݿø��Ͽ� �Ҽ���
--     ���� �� �ڸ������� ǥ���Ѵ�.
SELECT DISTINCT SUBSTR(TERM_NO,1, 4) AS "�⵵", ROUND(AVG(POINT),1) AS "�⵵ �� ����"
FROM TB_GRADE
WHERE STUDENT_NO = 'A112113'
GROUP BY SUBSTR(TERM_NO,1, 4)
ORDER BY �⵵ ASC;

-- 13. �а� �� ���л� ���� �ľ��ϰ��� �Ѵ�. �а� ��ȣ�� ���л� ���� ǥ���ϴ� SQL ������ �ۼ��Ͻÿ�.
SELECT DEPARTMENT_NO �а��ڵ��, COUNT(DECODE(ABSENCE_YN, 'Y', 1)) "���л� ��"
FROM TB_STUDENT
GROUP BY DEPARTMENT_NO
ORDER BY 1;

-- 14. �� ���б��� �ٴϴ� �������� �л����� �̸��� ã���� �Ѵ�. � SQL ������ ����ϸ� �����ϰڴ°�?
SELECT STUDENT_NAME, COUNT(*)
FROM TB_STUDENT
GROUP BY STUDENT_NAME
HAVING COUNT(*) > 1
ORDER BY 1;

-- 15)
SELECT SUBSTR(TERM_NO, 1, 4) �⵵, SUBSTR(TERM_NO, 5, 2) �б�, ROUND(AVG(POINT), 1) ���
FROM TB_GRADE
WHERE STUDENT_NO = 'A112113'
GROUP BY ROLLUP(SUBSTR(TERM_NO, 1, 4), SUBSTR(TERM_NO, 5, 2))
ORDER BY 1; 


