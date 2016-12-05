/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Thu Dec  1 05:41:03 2016
/////////////////////////////////////////////////////////////


module filter_ctrl_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;
  wire   n1;
  wire   [7:2] carry;

  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(n1), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(n1), .Y(SUM[0]) );
  CLKBUFX3 U2 ( .A(A[0]), .Y(n1) );
  XOR2X1 U3 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module filter_ctrl_DW01_inc_1 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module filter_ctrl_DW01_inc_2 ( A, SUM );
  input [13:0] A;
  output [13:0] SUM;

  wire   [13:2] carry;

  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[13]), .B(A[13]), .Y(SUM[13]) );
endmodule


module filter_ctrl_DW01_inc_3 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module filter_ctrl_DW01_inc_5 ( A, SUM );
  input [9:0] A;
  output [9:0] SUM;

  wire   [9:2] carry;

  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[9]), .B(A[9]), .Y(SUM[9]) );
endmodule


module filter_ctrl_DW01_inc_6 ( A, SUM );
  input [9:0] A;
  output [9:0] SUM;

  wire   [9:2] carry;

  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[9]), .B(A[9]), .Y(SUM[9]) );
endmodule


module filter_ctrl ( clk, RST, IEN, DIN, Q, MED, A, D, CE, WE, SE, INS, DEL, 
        DOUT, OV, BZ );
  input [7:0] DIN;
  input [7:0] Q;
  input [7:0] MED;
  output [9:0] A;
  output [7:0] D;
  output [7:0] INS;
  output [7:0] DEL;
  output [7:0] DOUT;
  input clk, RST, IEN;
  output CE, WE, SE, OV, BZ;
  wire   N960, N965, N1084, N1085, N1086, N1136, N1137, N1138, N1139, N1140,
         N1141, N1142, N1143, N1156, N1157, N1158, N1159, N1160, N1161, N1162,
         N1163, N1164, N1165, N1339, N1340, N1341, N1342, N1343, N1344, N1345,
         N1346, N1347, N1526, N1527, N1528, N1529, N1530, N1531, N1532, N1533,
         N1534, N1535, N1549, N1550, N1551, N1552, N1553, N1554, N1555, N1556,
         N1557, N1558, N1583, N1584, N1585, N1586, N1587, N1588, N1589, N1590,
         N1591, N1592, N1593, N1594, N1595, N1596, N1597, N1598, N1599, N1600,
         N1601, N1602, N1603, N1604, N1605, N1606, N1607, N1608, N1609, N1916,
         N2284, N2289, N2294, N2299, N2304, N2309, N2314, N2319, N2324, N2329,
         N2334, N2339, N2344, N2349, N2354, N2359, N2364, N2369, N2374, N2379,
         N2384, N2389, N2394, N2399, N2404, N2409, N2414, N2419, N2424, N2429,
         N2434, N2439, N2444, N2449, N2454, N2459, N2464, N2469, N2474, N2479,
         N2484, N2489, N2494, N2499, N2504, N2509, N2514, N2519, N2524, n812,
         n813, n814, n815, n816, n817, n818, n819, n820, n821, n822, n823,
         n824, n825, n826, n827, n828, n829, n1796, n1797, n1798, n1799, n1800,
         n1801, n1802, n1803, n1804, n1805, n1806, n1807, n1808, n1809, n1810,
         n1811, n1812, n1813, n1814, n1815, n1816, n1817, n1818, n1819, n1820,
         n1821, n1822, n1823, n1824, n1825, n1826, n1827, n1828, n1829, n1830,
         n1831, n1832, n1833, n1834, n1835, n1836, n1837, n1838, n1839, n1840,
         n1841, n1842, n1843, n1844, n1845, n1846, n1847, n1848, n1849, n1850,
         n1851, n1852, n1853, n1854, n1855, n1856, n1857, n1858, n1859, n1860,
         n1861, n1862, n1863, n1864, n1865, n1866, n1867, n1868, n1869, n1870,
         n1871, n1872, n1873, n1874, n1875, n1876, n1877, n1878, n1879, n1880,
         n1881, n1882, n1883, n1884, n1885, n1886, n1887, n1888, n1889, n1890,
         n1891, n1892, n1893, n1894, n1895, n1896, n1897, n1898, n1899, n1900,
         n1901, n1902, n1903, n1904, n1905, n1906, n1907, n1908, n1909, n1910,
         n1911, n1912, n1913, n1914, n1915, n1916, n1917, n1918, n1919, n1920,
         n1921, n1922, n1923, n1924, n1925, n1926, n1927, n1928, n1929, n1930,
         n1931, n1932, n1933, n1934, n1935, n1936, n1937, n1938, n1939, n1940,
         n1941, n1942, n1943, n1944, n1945, n1946, n1947, n1948, n1949, n1950,
         n1951, n1952, n1953, n1954, n1955, n1956, n1957, n1958, n1959, n1960,
         n1961, n1962, n1963, n1964, n1965, n1966, n1967, n1968, n1969, n1970,
         n1971, n1972, n1973, n1974, n1975, n1976, n1977, n1978, n1979, n1980,
         n1981, n1982, n1983, n1984, n1985, n1986, n1987, n1988, n1989, n1990,
         n1991, n1992, n1993, n1994, n1995, n1996, n1997, n1998, n1999, n2000,
         n2001, n2002, n2003, n2004, n2005, n2006, n2007, n2008, n2009, n2010,
         n2011, n2012, n2013, n2014, n2015, n2016, n2017, n2018, n2019, n2020,
         n2021, n2022, n2023, n2024, n2025, n2026, n2027, n2028, n2029, n2030,
         n2031, n2032, n2033, n2034, n2035, n2036, n2037, n2038, n2039, n2040,
         n2041, n2042, n2043, n2044, n2045, n2046, n2047, n2048, n2049, n2050,
         n2051, n2052, n2053, n2054, n2055, n2056, n2057, n2058, n2059, n2060,
         n2061, n2062, n2063, n2064, n2065, n2066, n2067, n2068, n2069, n2070,
         n2071, n2072, n2073, n2074, n2075, n2076, n2077, n2078, n2079, n2080,
         n2081, n2082, n2083, n2084, n2085, n2086, n2087, n2088, n2089, n2090,
         n2091, n2092, n2093, n2094, n2095, n2096, n2097, n2098, n2099, n2100,
         n2101, n2102, n2103, n2104, n2105, n2106, n2107, n2108, n2109, n2110,
         n2111, n2112, n2113, n2114, n2115, n2116, n2117, n2118, n2119, n2120,
         n2121, n2122, n2123, n2124, n2125, n2126, n2127, n2128, n2129, n2130,
         n2131, n2132, n2133, n2134, n2135, n2136, n2137, n2138, n2139, n2140,
         n2141, n2142, n2143, n2144, n2145, n2146, n2147, n2148, n2149, n2150,
         n2151, n2152, n2153, n2154, n2155, n2156, n2157, n2158, n2159, n2160,
         n2161, n2162, n2163, n2164, n2165, n2166, n2167, n2168, n2169, n2170,
         n2171, n2172, n2173, n2174, n2175, n2176, n2177, n2178, n2179, n2180,
         n2181, n2182, n2183, n2184, n2185, n2186, n2187, n2188, n2189, n2190,
         n2191, n2192, n2193, n2194, n2195, n2196, n2197, n2198, n2199, n2200,
         n2201, n2202, n2203, n2204, n2205, n2206, n2207, n2208, n2209, n2210,
         n2211, n2212, n2213, n2214, n2215, n2216, n2217, n2218, n2219, n2220,
         n2221, n2222, n2223, n2224, n2225, n2226, n2227, n2228, n2229, n2230,
         n2231, n2232, n2233, n2234, n2235, n2236, n2237, n2238, n2239, n2240,
         n2241, n2242, n2243, n2244, n2245, n2246, n2247, n2248, n2249, n2250,
         n2251, n2252, n2253, n2254, n2255, n2256, n2257, n2258, n2259, n2260,
         n2261, n2262, n2263, n2264, n2265, n2266, n2267, n2268, n2269, n2270,
         n2271, n2272, n2273, n2274, n2275, n2276, n2277, n2278, n2279, n2280,
         n2281, n2282, n2283, n2284, n2285, n2286, n2287, n2288, n2289, n2290,
         n2291, n2292, n2293, n2294, n2295, n2296, N1154, N1146, N1145, N1336,
         N1328, N1327, \dp_cluster_1/N1325 , \dp_cluster_1/N1324 ,
         \dp_cluster_1/N1323 , \dp_cluster_1/N1322 , \dp_cluster_1/N1321 ,
         \dp_cluster_1/N1320 , \dp_cluster_1/N1319 , \r1068/A[7] ,
         \r1068/A[6] , \r1068/A[5] , \r1068/A[4] , \r1068/A[3] , \r1068/A[2] ,
         \r1068/A[1] , \r1070/A[7] , \r1070/A[6] , \r1070/A[5] , \r1070/A[4] ,
         \r1070/A[3] , \r1070/A[2] , \r1070/A[1] , \r1072/A[7] , \r1072/A[6] ,
         \r1072/A[5] , \r1072/A[4] , \r1072/A[3] , \r1072/A[2] , \r1072/A[0] ,
         \r1074/A[7] , \r1074/A[6] , \r1074/A[5] , \r1074/A[4] , \r1074/A[3] ,
         \r1074/A[2] , \r1074/A[1] , \r1078/A[7] , \r1078/A[6] , \r1078/A[5] ,
         \r1078/A[4] , \r1078/A[3] , \r1078/A[2] , \r1078/A[1] , \r1078/A[0] ,
         \r1080/A[7] , \r1080/A[6] , \r1080/A[5] , \r1080/A[4] , \r1080/A[3] ,
         \r1080/A[2] , \r1084/A[7] , \r1084/A[6] , \r1084/A[5] , \r1084/A[4] ,
         \r1084/A[3] , \r1084/A[2] , \r1084/A[0] , \r1086/A[7] , \r1086/A[6] ,
         \r1086/A[5] , \r1086/A[4] , \r1086/A[3] , \r1086/A[2] , \r1086/A[1] ,
         \r1090/A[7] , \r1090/A[6] , \r1090/A[5] , \r1090/A[4] , \r1090/A[3] ,
         \r1090/A[2] , \r1090/A[1] , \r1090/A[0] , \r1092/A[7] , \r1092/A[6] ,
         \r1092/A[5] , \r1092/A[4] , \r1092/A[3] , \r1092/A[2] , \r1094/A[7] ,
         \r1094/A[6] , \r1094/A[5] , \r1094/A[4] , \r1094/A[3] , \r1094/A[2] ,
         \r1094/A[1] , \r1067/carry[2] , \r1067/carry[3] , \r1067/carry[4] ,
         \r1067/carry[5] , \r1067/carry[6] , \r1067/carry[7] ,
         \r1066/carry[7] , \r1066/carry[6] , \r1066/carry[5] ,
         \r1066/carry[4] , \r1066/carry[3] , \r1064/carry[7] ,
         \r1064/carry[6] , \r1064/carry[5] , \r1064/carry[4] ,
         \r1064/carry[3] , \r1063/carry[2] , \r1063/carry[3] ,
         \r1063/carry[4] , \r1063/carry[5] , \r1063/carry[6] ,
         \r1063/carry[7] , \r1062/carry[2] , \r1062/carry[3] ,
         \r1062/carry[4] , \r1062/carry[5] , \r1062/carry[6] ,
         \r1062/carry[7] , \r1061/carry[7] , \r1061/carry[6] ,
         \r1061/carry[5] , \r1061/carry[4] , \r1061/carry[3] ,
         \r1059/carry[7] , \r1059/carry[6] , \r1059/carry[5] ,
         \r1059/carry[4] , \r1059/carry[3] , \r1058/carry[2] ,
         \r1058/carry[3] , \r1058/carry[4] , \r1058/carry[5] ,
         \r1058/carry[6] , \r1058/carry[7] , \r1053/carry[5] ,
         \r1053/carry[4] , \r1053/carry[3] , \r1053/carry[2] ,
         \add_223_3/carry[9] , \add_223_3/carry[8] , \add_223_3/A[7] ,
         \sub_223_2/carry[2] , \sub_223_2/carry[3] , \sub_223_2/carry[4] ,
         \sub_223_2/carry[5] , \sub_223_2/carry[6] , \sub_223_2/carry[7] ,
         \add_208/carry[9] , \add_208/carry[8] , \add_208/A[7] ,
         \sub_208_2/carry[2] , \sub_208_2/carry[3] , \sub_208_2/carry[4] ,
         \sub_208_2/carry[5] , \sub_208_2/carry[6] , \sub_208_2/carry[7] , n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, n408,
         n409, n410, n411, n412, n413, n414, n415, n416, n417, n418, n419,
         n420, n421, n422, n423, n424, n425, n426, n427, n428, n429, n430,
         n431, n432, n433, n434, n435, n436, n437, n438, n439, n440, n441,
         n442, n443, n444, n445, n446, n447, n448, n449, n450, n451, n452,
         n453, n454, n455, n456, n457, n458, n459, n460, n461, n462, n463,
         n464, n465, n466, n467, n468, n469, n470, n471, n472, n473, n474,
         n475, n476, n477, n478, n479, n480, n481, n482, n483, n484, n485,
         n486, n487, n488, n489, n490, n491, n492, n493, n494, n495, n496,
         n497, n498, n499, n500, n501, n502, n503, n504, n505, n506, n507,
         n508, n509, n510, n511, n512, n513, n514, n515, n516, n517, n518,
         n519, n520, n521, n522, n523, n524, n525, n526, n527, n528, n529,
         n530, n531, n532, n533, n534, n535, n536, n537, n538, n539, n540,
         n541, n542, n543, n544, n545, n546, n547, n548, n549, n550, n551,
         n552, n553, n554, n555, n556, n557, n558, n559, n560, n561, n562,
         n563, n564, n565, n566, n567, n568, n569, n570, n571, n572, n573,
         n574, n575, n576, n577, n578, n579, n580, n581, n582, n583, n584,
         n585, n586, n587, n588, n589, n590, n591, n592, n593, n594, n595,
         n596, n597, n598, n599, n600, n601, n602, n603, n604, n605, n606,
         n607, n608, n609, n610, n611, n612, n613, n614, n615, n616, n617,
         n618, n619, n620, n621, n622, n623, n624, n625, n626, n627, n628,
         n629, n630, n631, n632, n633, n634, n635, n636, n637, n638, n639,
         n640, n641, n642, n643, n644, n645, n646, n647, n648, n649, n650,
         n651, n652, n653, n654, n655, n656, n657, n658, n659, n660, n661,
         n662, n663, n664, n665, n666, n667, n668, n669, n670, n671, n672,
         n673, n674, n675, n676, n677, n678, n679, n680, n681, n682, n683,
         n684, n685, n686, n687, n688, n689, n690, n691, n692, n693, n694,
         n695, n696, n697, n698, n699, n700, n701, n702, n703, n704, n705,
         n706, n707, n708, n709, n710, n711, n712, n713, n714, n715, n716,
         n717, n718, n719, n720, n721, n722, n723, n724, n725, n726, n727,
         n728, n729, n730, n731, n732, n733, n734, n735, n736, n737, n738,
         n739, n740, n741, n742, n743, n744, n745, n746, n747, n748, n749,
         n750, n751, n752, n753, n754, n755, n756, n757, n758, n759, n760,
         n761, n762, n763, n764, n765, n766, n767, n768, n769, n770, n771,
         n772, n773, n774, n775, n776, n777, n778, n779, n780, n781, n782,
         n783, n784, n785, n786, n787, n788, n789, n790, n791, n792, n793,
         n794, n795, n796, n797, n798, n799, n800, n801, n802, n803, n804,
         n805, n806, n807, n808, n809, n810, n811, n830, n831, n832, n833,
         n834, n835, n836, n837, n838, n839, n840, n841, n842, n843, n844,
         n845, n846, n847, n848, n849, n850, n851, n852, n853, n854, n855,
         n856, n857, n858, n859, n860, n861, n862, n863, n864, n865, n866,
         n867, n868, n869, n870, n871, n872, n873, n874, n875, n876, n877,
         n878, n879, n880, n881, n882, n883, n884, n885, n886, n887, n888,
         n889, n890, n891, n892, n893, n894, n895, n896, n897, n898, n899,
         n900, n901, n902, n903, n904, n905, n906, n907, n908, n909, n910,
         n911, n912, n913, n914, n915, n916, n917, n918, n919, n920, n921,
         n922, n923, n924, n925, n926, n927, n928, n929, n930, n931, n932,
         n933, n934, n935, n936, n937, n938, n939, n940, n941, n942, n943,
         n944, n945, n946, n947, n948, n949, n950, n951, n952, n953, n954,
         n955, n956, n957, n958, n959, n960, n961, n962, n963, n964, n965,
         n966, n967, n968, n969, n970, n971, n972, n973, n974, n975, n976,
         n977, n978, n979, n980, n981, n982, n983, n984, n985, n986, n987,
         n988, n989, n990, n991, n992, n993, n994, n995, n996, n997, n998,
         n999, n1000, n1001, n1002, n1003, n1004, n1005, n1006, n1007, n1008,
         n1009, n1010, n1011, n1012, n1013, n1014, n1015, n1016, n1017, n1018,
         n1019, n1020, n1021, n1022, n1023, n1024, n1025, n1026, n1027, n1028,
         n1029, n1030, n1031, n1032, n1033, n1034, n1035, n1036, n1037, n1038,
         n1039, n1040, n1041, n1042, n1043, n1044, n1045, n1046, n1047, n1048,
         n1049, n1050, n1051, n1052, n1053, n1054, n1055, n1056, n1057, n1058,
         n1059, n1060, n1061, n1062, n1063, n1064, n1065, n1066, n1067, n1068,
         n1069, n1070, n1071, n1072, n1073, n1074, n1075, n1076, n1077, n1078,
         n1079, n1080, n1081, n1082, n1083, n1084, n1085, n1086, n1087, n1088,
         n1089, n1090, n1091, n1092, n1093, n1094, n1095, n1096, n1097, n1098,
         n1099, n1100, n1101, n1102, n1103, n1104, n1105, n1106, n1107, n1108,
         n1109, n1110, n1111, n1112, n1113, n1114, n1115, n1116, n1117, n1118,
         n1119, n1120, n1121, n1122, n1123, n1124, n1125, n1126, n1127, n1128,
         n1129, n1130, n1131, n1132, n1133, n1134, n1135, n1136, n1137, n1138,
         n1139, n1140, n1141, n1142, n1143, n1144, n1145, n1146, n1147, n1148,
         n1149, n1150, n1151, n1152, n1153, n1154, n1155, n1156, n1157, n1158,
         n1159, n1160, n1161, n1162, n1163, n1164, n1165, n1166, n1167, n1168,
         n1169, n1170, n1171, n1172, n1173, n1174, n1175, n1176, n1177, n1178,
         n1179, n1180, n1181, n1182, n1183, n1184, n1185, n1186, n1187, n1188,
         n1189, n1190, n1191, n1192, n1193, n1194, n1195, n1196, n1197, n1198,
         n1199, n1200, n1201, n1202, n1203, n1204, n1205, n1206, n1207, n1208,
         n1209, n1210, n1211, n1212, n1213, n1214, n1215, n1216, n1217, n1218,
         n1219, n1220, n1221, n1222, n1223, n1224, n1225, n1226, n1227, n1228,
         n1229, n1230, n1231, n1232, n1233, n1234, n1235, n1236, n1237, n1238,
         n1239, n1240, n1241, n1242, n1243, n1244, n1245, n1246, n1247, n1248,
         n1249, n1250, n1251, n1252, n1253, n1254, n1255, n1256, n1257, n1258,
         n1259, n1260, n1261, n1262, n1263, n1264, n1265, n1266, n1267, n1268,
         n1269, n1270, n1271, n1272, n1273, n1274, n1275, n1276, n1277, n1278,
         n1279, n1280, n1281, n1282, n1283, n1284, n1285, n1286, n1287, n1288,
         n1289, n1290, n1291, n1292, n1293, n1294, n1295, n1296, n1297, n1298,
         n1299, n1300, n1301, n1302, n1303, n1304, n1305, n1306, n1307, n1308,
         n1309, n1310, n1311, n1312, n1313, n1314, n1315, n1316, n1317, n1318,
         n1319, n1320, n1321, n1322, n1323, n1324, n1325, n1326, n1327, n1328,
         n1329, n1330, n1331, n1332, n1333, n1334, n1335, n1336, n1337, n1338,
         n1339, n1340, n1341, n1342, n1343, n1344, n1345, n1346, n1347, n1348,
         n1349, n1350, n1351, n1352, n1353, n1354, n1355, n1356, n1357, n1358,
         n1359, n1360, n1361, n1362, n1363, n1364, n1365, n1366, n1367, n1368,
         n1369, n1370, n1371, n1372, n1373, n1374, n1375, n1376, n1377, n1378,
         n1379, n1380, n1381, n1382, n1383, n1384, n1385, n1386, n1387, n1388,
         n1389, n1390, n1391, n1392, n1393, n1394, n1395, n1396, n1397, n1398,
         n1399, n1400, n1401, n1402, n1403, n1404, n1405, n1406, n1407, n1408,
         n1409, n1410, n1411, n1412, n1413, n1414, n1415, n1416, n1417, n1418,
         n1419, n1420, n1421, n1422, n1423, n1424, n1425, n1426, n1427, n1428,
         n1429, n1430, n1431, n1432, n1433, n1434, n1435, n1436, n1437, n1438,
         n1439, n1440, n1441, n1442, n1443, n1444, n1445, n1446, n1447, n1448,
         n1449, n1450, n1451, n1452, n1453, n1454, n1455, n1456, n1457, n1458,
         n1459, n1460, n1461, n1462, n1463, n1464, n1465, n1466, n1467, n1468,
         n1469, n1470;
  wire   [2:0] state;
  wire   [2:0] state_next;
  wire   [9:0] wc;
  wire   [5:0] rc;
  wire   [7:0] lc;
  wire   [13:0] pc;
  wire   [9:0] wa;
  wire   [7:0] px;
  wire   [7:0] py;

  filter_ctrl_DW01_inc_0 r1057 ( .A({py[7:1], \r1084/A[0] }), .SUM({
        \r1090/A[7] , \r1090/A[6] , \r1090/A[5] , \r1090/A[4] , \r1090/A[3] , 
        \r1090/A[2] , \r1090/A[1] , \r1090/A[0] }) );
  filter_ctrl_DW01_inc_1 r1056 ( .A({px[7:1], n664}), .SUM({\r1078/A[7] , 
        \r1078/A[6] , \r1078/A[5] , \r1078/A[4] , \r1078/A[3] , \r1078/A[2] , 
        \r1078/A[1] , \r1078/A[0] }) );
  filter_ctrl_DW01_inc_2 r1055 ( .A(pc), .SUM({N1609, N1608, N1607, N1606, 
        N1605, N1604, N1603, N1602, N1601, N1600, N1599, N1598, N1597, N1596})
         );
  filter_ctrl_DW01_inc_3 r1054 ( .A(lc), .SUM({N1595, N1594, N1593, N1592, 
        N1591, N1590, N1589, N1588}) );
  filter_ctrl_DW01_inc_5 r1052 ( .A(wc), .SUM({N1558, N1557, N1556, N1555, 
        N1554, N1553, N1552, N1551, N1550, N1549}) );
  filter_ctrl_DW01_inc_6 r1051 ( .A(wa), .SUM({N1535, N1534, N1533, N1532, 
        N1531, N1530, N1529, N1528, N1527, N1526}) );
  DFFRX1 \D_reg[7]  ( .D(n2241), .CK(clk), .RN(n707), .Q(D[7]), .QN(n1453) );
  DFFRX1 \D_reg[6]  ( .D(n2242), .CK(clk), .RN(n707), .Q(D[6]), .QN(n1454) );
  DFFRX1 \D_reg[5]  ( .D(n2243), .CK(clk), .RN(n707), .Q(D[5]), .QN(n1455) );
  DFFRX1 \D_reg[4]  ( .D(n2244), .CK(clk), .RN(n708), .Q(D[4]), .QN(n1456) );
  DFFRX1 \D_reg[3]  ( .D(n2245), .CK(clk), .RN(n708), .Q(D[3]), .QN(n1457) );
  DFFRX1 \D_reg[2]  ( .D(n2246), .CK(clk), .RN(n708), .Q(D[2]), .QN(n1458) );
  DFFRX1 \D_reg[1]  ( .D(n2247), .CK(clk), .RN(n708), .Q(D[1]), .QN(n1459) );
  DFFRX1 \D_reg[0]  ( .D(n2248), .CK(clk), .RN(n708), .Q(D[0]), .QN(n1460) );
  DFFRX1 BZ_reg ( .D(n2196), .CK(clk), .RN(n709), .Q(BZ) );
  DFFRX1 OV_reg ( .D(n2240), .CK(clk), .RN(n713), .Q(OV), .QN(n1452) );
  DFFRX1 \DOUT_reg[7]  ( .D(n2232), .CK(clk), .RN(n712), .Q(DOUT[7]), .QN(
        n1444) );
  DFFRX1 \DOUT_reg[6]  ( .D(n2233), .CK(clk), .RN(n712), .Q(DOUT[6]), .QN(
        n1445) );
  DFFRX1 \DOUT_reg[5]  ( .D(n2234), .CK(clk), .RN(n713), .Q(DOUT[5]), .QN(
        n1446) );
  DFFRX1 \DOUT_reg[4]  ( .D(n2235), .CK(clk), .RN(n713), .Q(DOUT[4]), .QN(
        n1447) );
  DFFRX1 \DOUT_reg[3]  ( .D(n2236), .CK(clk), .RN(n713), .Q(DOUT[3]), .QN(
        n1448) );
  DFFRX1 \DOUT_reg[2]  ( .D(n2237), .CK(clk), .RN(n713), .Q(DOUT[2]), .QN(
        n1449) );
  DFFRX1 \DOUT_reg[1]  ( .D(n2238), .CK(clk), .RN(n713), .Q(DOUT[1]), .QN(
        n1450) );
  DFFRX1 \DOUT_reg[0]  ( .D(n2239), .CK(clk), .RN(n713), .Q(DOUT[0]), .QN(
        n1451) );
  DFFRX1 \wa_reg[9]  ( .D(n2249), .CK(clk), .RN(n709), .Q(wa[9]) );
  DFFSX1 WE_reg ( .D(n2230), .CK(clk), .SN(n747), .Q(WE) );
  DFFRX1 \A_reg[9]  ( .D(n2220), .CK(clk), .RN(n712), .Q(A[9]), .QN(n820) );
  DFFRX1 \A_reg[8]  ( .D(n2221), .CK(clk), .RN(n712), .Q(A[8]), .QN(n821) );
  DFFRX1 \A_reg[7]  ( .D(n2222), .CK(clk), .RN(n712), .Q(A[7]), .QN(n822) );
  DFFRX1 \A_reg[6]  ( .D(n2223), .CK(clk), .RN(n712), .Q(A[6]), .QN(n823) );
  DFFRX1 \A_reg[5]  ( .D(n2224), .CK(clk), .RN(n712), .Q(A[5]), .QN(n824) );
  DFFRX1 \A_reg[4]  ( .D(n2225), .CK(clk), .RN(n712), .Q(A[4]), .QN(n825) );
  DFFRX1 \A_reg[3]  ( .D(n2226), .CK(clk), .RN(n712), .Q(A[3]), .QN(n826) );
  DFFRX1 \A_reg[2]  ( .D(n2227), .CK(clk), .RN(n712), .Q(A[2]), .QN(n827) );
  DFFRX1 \A_reg[1]  ( .D(n2228), .CK(clk), .RN(n712), .Q(A[1]), .QN(n828) );
  DFFRX1 \A_reg[0]  ( .D(n2229), .CK(clk), .RN(n712), .Q(A[0]), .QN(n829) );
  DFFSX1 CE_reg ( .D(n2231), .CK(clk), .SN(n747), .Q(CE), .QN(n1443) );
  DFFRX1 \mv_reg[6][7]  ( .D(n1852), .CK(clk), .RN(n713), .QN(n215) );
  DFFRX1 \mv_reg[6][6]  ( .D(n1853), .CK(clk), .RN(n713), .QN(n214) );
  DFFRX1 \mv_reg[6][5]  ( .D(n1854), .CK(clk), .RN(n713), .QN(n213) );
  DFFRX1 \mv_reg[6][4]  ( .D(n1855), .CK(clk), .RN(n713), .QN(n212) );
  DFFRX1 \mv_reg[6][3]  ( .D(n1856), .CK(clk), .RN(n713), .QN(n211) );
  DFFRX1 \mv_reg[6][2]  ( .D(n1857), .CK(clk), .RN(n714), .QN(n210) );
  DFFRX1 \mv_reg[6][1]  ( .D(n1858), .CK(clk), .RN(n714), .QN(n209) );
  DFFRX1 \mv_reg[6][0]  ( .D(n1859), .CK(clk), .RN(n714), .QN(n208) );
  DFFRX1 \mv_reg[13][7]  ( .D(n1908), .CK(clk), .RN(n714), .QN(n34) );
  DFFRX1 \mv_reg[13][6]  ( .D(n1909), .CK(clk), .RN(n714), .QN(n32) );
  DFFRX1 \mv_reg[13][5]  ( .D(n1910), .CK(clk), .RN(n714), .QN(n30) );
  DFFRX1 \mv_reg[13][4]  ( .D(n1911), .CK(clk), .RN(n714), .QN(n28) );
  DFFRX1 \mv_reg[13][3]  ( .D(n1912), .CK(clk), .RN(n714), .QN(n26) );
  DFFRX1 \mv_reg[13][2]  ( .D(n1913), .CK(clk), .RN(n714), .QN(n24) );
  DFFRX1 \mv_reg[13][1]  ( .D(n1914), .CK(clk), .RN(n714), .QN(n22) );
  DFFRX1 \mv_reg[13][0]  ( .D(n1915), .CK(clk), .RN(n714), .QN(n20) );
  DFFRX1 \mv_reg[20][7]  ( .D(n1964), .CK(clk), .RN(n714), .QN(n33) );
  DFFRX1 \mv_reg[20][6]  ( .D(n1965), .CK(clk), .RN(n715), .QN(n31) );
  DFFRX1 \mv_reg[20][5]  ( .D(n1966), .CK(clk), .RN(n715), .QN(n29) );
  DFFRX1 \mv_reg[20][4]  ( .D(n1967), .CK(clk), .RN(n715), .QN(n27) );
  DFFRX1 \mv_reg[20][3]  ( .D(n1968), .CK(clk), .RN(n715), .QN(n25) );
  DFFRX1 \mv_reg[20][2]  ( .D(n1969), .CK(clk), .RN(n715), .QN(n23) );
  DFFRX1 \mv_reg[20][1]  ( .D(n1970), .CK(clk), .RN(n715), .QN(n21) );
  DFFRX1 \mv_reg[20][0]  ( .D(n1971), .CK(clk), .RN(n715), .QN(n19) );
  DFFRX1 \mv_reg[27][7]  ( .D(n2020), .CK(clk), .RN(n715), .QN(n319) );
  DFFRX1 \mv_reg[27][6]  ( .D(n2021), .CK(clk), .RN(n715), .QN(n318) );
  DFFRX1 \mv_reg[27][5]  ( .D(n2022), .CK(clk), .RN(n715), .QN(n317) );
  DFFRX1 \mv_reg[27][4]  ( .D(n2023), .CK(clk), .RN(n715), .QN(n316) );
  DFFRX1 \mv_reg[27][3]  ( .D(n2024), .CK(clk), .RN(n715), .QN(n315) );
  DFFRX1 \mv_reg[27][2]  ( .D(n2025), .CK(clk), .RN(n716), .QN(n314) );
  DFFRX1 \mv_reg[27][1]  ( .D(n2026), .CK(clk), .RN(n716), .QN(n313) );
  DFFRX1 \mv_reg[27][0]  ( .D(n2027), .CK(clk), .RN(n716), .QN(n312) );
  DFFRX1 \mv_reg[41][7]  ( .D(n2132), .CK(clk), .RN(n716), .QN(n159) );
  DFFRX1 \mv_reg[41][6]  ( .D(n2133), .CK(clk), .RN(n717), .QN(n158) );
  DFFRX1 \mv_reg[41][5]  ( .D(n2134), .CK(clk), .RN(n717), .QN(n157) );
  DFFRX1 \mv_reg[41][4]  ( .D(n2135), .CK(clk), .RN(n717), .QN(n156) );
  DFFRX1 \mv_reg[41][3]  ( .D(n2136), .CK(clk), .RN(n717), .QN(n155) );
  DFFRX1 \mv_reg[41][2]  ( .D(n2137), .CK(clk), .RN(n717), .QN(n154) );
  DFFRX1 \mv_reg[41][1]  ( .D(n2138), .CK(clk), .RN(n717), .QN(n153) );
  DFFRX1 \mv_reg[41][0]  ( .D(n2139), .CK(clk), .RN(n717), .QN(n152) );
  DFFRX1 \mv_reg[48][7]  ( .D(n2188), .CK(clk), .RN(n717), .QN(n362) );
  DFFRX1 \mv_reg[5][7]  ( .D(n1844), .CK(clk), .RN(n717), .QN(n231) );
  DFFRX1 \mv_reg[12][7]  ( .D(n1900), .CK(clk), .RN(n717), .QN(n50) );
  DFFRX1 \mv_reg[19][7]  ( .D(n1956), .CK(clk), .RN(n717), .QN(n49) );
  DFFRX1 \mv_reg[26][7]  ( .D(n2012), .CK(clk), .RN(n717), .QN(n230) );
  DFFRX1 \mv_reg[40][7]  ( .D(n2124), .CK(clk), .RN(n718), .QN(n167) );
  DFFRX1 \mv_reg[47][7]  ( .D(n2180), .CK(clk), .RN(n718), .QN(n367) );
  DFFRX1 \mv_reg[4][7]  ( .D(n1836), .CK(clk), .RN(n718), .QN(n247) );
  DFFRX1 \mv_reg[11][7]  ( .D(n1892), .CK(clk), .RN(n718), .QN(n66) );
  DFFRX1 \mv_reg[18][7]  ( .D(n1948), .CK(clk), .RN(n718), .QN(n65) );
  DFFRX1 \mv_reg[25][7]  ( .D(n2004), .CK(clk), .RN(n718), .QN(n246) );
  DFFRX1 \mv_reg[39][7]  ( .D(n2116), .CK(clk), .RN(n718), .QN(n175) );
  DFFRX1 \mv_reg[46][7]  ( .D(n2172), .CK(clk), .RN(n718), .QN(n327) );
  DFFRX1 \mv_reg[3][7]  ( .D(n1828), .CK(clk), .RN(n718), .QN(n263) );
  DFFRX1 \mv_reg[10][7]  ( .D(n1884), .CK(clk), .RN(n718), .QN(n82) );
  DFFRX1 \mv_reg[17][7]  ( .D(n1940), .CK(clk), .RN(n719), .QN(n81) );
  DFFRX1 \mv_reg[24][7]  ( .D(n1996), .CK(clk), .RN(n719), .QN(n262) );
  DFFRX1 \mv_reg[38][7]  ( .D(n2108), .CK(clk), .RN(n719), .QN(n199) );
  DFFRX1 \mv_reg[45][7]  ( .D(n2164), .CK(clk), .RN(n719), .QN(n335) );
  DFFRX1 \mv_reg[2][7]  ( .D(n1820), .CK(clk), .RN(n719), .QN(n279) );
  DFFRX1 \mv_reg[9][7]  ( .D(n1876), .CK(clk), .RN(n719), .QN(n98) );
  DFFRX1 \mv_reg[16][7]  ( .D(n1932), .CK(clk), .RN(n719), .QN(n97) );
  DFFRX1 \mv_reg[23][7]  ( .D(n1988), .CK(clk), .RN(n719), .QN(n278) );
  DFFRX1 \mv_reg[37][7]  ( .D(n2100), .CK(clk), .RN(n719), .QN(n183) );
  DFFRX1 \mv_reg[44][7]  ( .D(n2156), .CK(clk), .RN(n719), .QN(n343) );
  DFFRX1 \mv_reg[1][7]  ( .D(n1812), .CK(clk), .RN(n720), .QN(n295) );
  DFFRX1 \mv_reg[8][7]  ( .D(n1868), .CK(clk), .RN(n720), .QN(n114) );
  DFFRX1 \mv_reg[15][7]  ( .D(n1924), .CK(clk), .RN(n720), .QN(n113) );
  DFFRX1 \mv_reg[22][7]  ( .D(n1980), .CK(clk), .RN(n720), .QN(n294) );
  DFFRX1 \mv_reg[36][7]  ( .D(n2092), .CK(clk), .RN(n720), .QN(n191) );
  DFFRX1 \mv_reg[43][7]  ( .D(n2148), .CK(clk), .RN(n720), .QN(n351) );
  DFFRX1 \mv_reg[0][7]  ( .D(n1804), .CK(clk), .RN(n720), .QN(n130) );
  DFFRX1 \mv_reg[7][7]  ( .D(n1860), .CK(clk), .RN(n720), .QN(n310) );
  DFFRX1 \mv_reg[14][7]  ( .D(n1916), .CK(clk), .RN(n720), .QN(n12) );
  DFFRX1 \mv_reg[21][7]  ( .D(n1972), .CK(clk), .RN(n720), .QN(n122) );
  DFFRX1 \mv_reg[28][7]  ( .D(n2028), .CK(clk), .RN(n720), .QN(n207) );
  DFFRX1 \mv_reg[35][7]  ( .D(n2084), .CK(clk), .RN(n721), .QN(n311) );
  DFFRX1 \mv_reg[42][7]  ( .D(n2140), .CK(clk), .RN(n721), .QN(n138) );
  DFFRX1 \mv_reg[48][6]  ( .D(n2189), .CK(clk), .RN(n721), .QN(n361) );
  DFFRX1 \mv_reg[5][6]  ( .D(n1845), .CK(clk), .RN(n721), .QN(n229) );
  DFFRX1 \mv_reg[12][6]  ( .D(n1901), .CK(clk), .RN(n721), .QN(n48) );
  DFFRX1 \mv_reg[19][6]  ( .D(n1957), .CK(clk), .RN(n721), .QN(n47) );
  DFFRX1 \mv_reg[26][6]  ( .D(n2013), .CK(clk), .RN(n721), .QN(n228) );
  DFFRX1 \mv_reg[40][6]  ( .D(n2125), .CK(clk), .RN(n721), .QN(n166) );
  DFFRX1 \mv_reg[47][6]  ( .D(n2181), .CK(clk), .RN(n721), .QN(n366) );
  DFFRX1 \mv_reg[4][6]  ( .D(n1837), .CK(clk), .RN(n721), .QN(n245) );
  DFFRX1 \mv_reg[11][6]  ( .D(n1893), .CK(clk), .RN(n721), .QN(n64) );
  DFFRX1 \mv_reg[18][6]  ( .D(n1949), .CK(clk), .RN(n722), .QN(n63) );
  DFFRX1 \mv_reg[25][6]  ( .D(n2005), .CK(clk), .RN(n722), .QN(n244) );
  DFFRX1 \mv_reg[39][6]  ( .D(n2117), .CK(clk), .RN(n722), .QN(n174) );
  DFFRX1 \mv_reg[46][6]  ( .D(n2173), .CK(clk), .RN(n722), .QN(n326) );
  DFFRX1 \mv_reg[3][6]  ( .D(n1829), .CK(clk), .RN(n722), .QN(n261) );
  DFFRX1 \mv_reg[10][6]  ( .D(n1885), .CK(clk), .RN(n722), .QN(n80) );
  DFFRX1 \mv_reg[17][6]  ( .D(n1941), .CK(clk), .RN(n722), .QN(n79) );
  DFFRX1 \mv_reg[24][6]  ( .D(n1997), .CK(clk), .RN(n722), .QN(n260) );
  DFFRX1 \mv_reg[38][6]  ( .D(n2109), .CK(clk), .RN(n722), .QN(n198) );
  DFFRX1 \mv_reg[45][6]  ( .D(n2165), .CK(clk), .RN(n722), .QN(n334) );
  DFFRX1 \mv_reg[2][6]  ( .D(n1821), .CK(clk), .RN(n723), .QN(n277) );
  DFFRX1 \mv_reg[9][6]  ( .D(n1877), .CK(clk), .RN(n723), .QN(n96) );
  DFFRX1 \mv_reg[16][6]  ( .D(n1933), .CK(clk), .RN(n723), .QN(n95) );
  DFFRX1 \mv_reg[23][6]  ( .D(n1989), .CK(clk), .RN(n723), .QN(n276) );
  DFFRX1 \mv_reg[37][6]  ( .D(n2101), .CK(clk), .RN(n723), .QN(n182) );
  DFFRX1 \mv_reg[44][6]  ( .D(n2157), .CK(clk), .RN(n723), .QN(n342) );
  DFFRX1 \mv_reg[1][6]  ( .D(n1813), .CK(clk), .RN(n723), .QN(n293) );
  DFFRX1 \mv_reg[8][6]  ( .D(n1869), .CK(clk), .RN(n723), .QN(n112) );
  DFFRX1 \mv_reg[15][6]  ( .D(n1925), .CK(clk), .RN(n723), .QN(n111) );
  DFFRX1 \mv_reg[22][6]  ( .D(n1981), .CK(clk), .RN(n723), .QN(n292) );
  DFFRX1 \mv_reg[36][6]  ( .D(n2093), .CK(clk), .RN(n724), .QN(n190) );
  DFFRX1 \mv_reg[43][6]  ( .D(n2149), .CK(clk), .RN(n724), .QN(n350) );
  DFFRX1 \mv_reg[0][6]  ( .D(n1805), .CK(clk), .RN(n724), .QN(n129) );
  DFFRX1 \mv_reg[7][6]  ( .D(n1861), .CK(clk), .RN(n724), .QN(n308) );
  DFFRX1 \mv_reg[14][6]  ( .D(n1917), .CK(clk), .RN(n724), .QN(n11) );
  DFFRX1 \mv_reg[21][6]  ( .D(n1973), .CK(clk), .RN(n724), .QN(n121) );
  DFFRX1 \mv_reg[28][6]  ( .D(n2029), .CK(clk), .RN(n724), .QN(n206) );
  DFFRX1 \mv_reg[35][6]  ( .D(n2085), .CK(clk), .RN(n724), .QN(n309) );
  DFFRX1 \mv_reg[42][6]  ( .D(n2141), .CK(clk), .RN(n724), .QN(n137) );
  DFFRX1 \mv_reg[48][5]  ( .D(n2190), .CK(clk), .RN(n724), .QN(n360) );
  DFFRX1 \mv_reg[5][5]  ( .D(n1846), .CK(clk), .RN(n724), .QN(n227) );
  DFFRX1 \mv_reg[12][5]  ( .D(n1902), .CK(clk), .RN(n724), .QN(n46) );
  DFFRX1 \mv_reg[19][5]  ( .D(n1958), .CK(clk), .RN(n725), .QN(n45) );
  DFFRX1 \mv_reg[26][5]  ( .D(n2014), .CK(clk), .RN(n725), .QN(n226) );
  DFFRX1 \mv_reg[40][5]  ( .D(n2126), .CK(clk), .RN(n725), .QN(n165) );
  DFFRX1 \mv_reg[47][5]  ( .D(n2182), .CK(clk), .RN(n725), .QN(n365) );
  DFFRX1 \mv_reg[4][5]  ( .D(n1838), .CK(clk), .RN(n725), .QN(n243) );
  DFFRX1 \mv_reg[11][5]  ( .D(n1894), .CK(clk), .RN(n725), .QN(n62) );
  DFFRX1 \mv_reg[18][5]  ( .D(n1950), .CK(clk), .RN(n725), .QN(n61) );
  DFFRX1 \mv_reg[25][5]  ( .D(n2006), .CK(clk), .RN(n725), .QN(n242) );
  DFFRX1 \mv_reg[39][5]  ( .D(n2118), .CK(clk), .RN(n725), .QN(n173) );
  DFFRX1 \mv_reg[46][5]  ( .D(n2174), .CK(clk), .RN(n725), .QN(n325) );
  DFFRX1 \mv_reg[3][5]  ( .D(n1830), .CK(clk), .RN(n726), .QN(n259) );
  DFFRX1 \mv_reg[10][5]  ( .D(n1886), .CK(clk), .RN(n726), .QN(n78) );
  DFFRX1 \mv_reg[17][5]  ( .D(n1942), .CK(clk), .RN(n726), .QN(n77) );
  DFFRX1 \mv_reg[24][5]  ( .D(n1998), .CK(clk), .RN(n726), .QN(n258) );
  DFFRX1 \mv_reg[38][5]  ( .D(n2110), .CK(clk), .RN(n726), .QN(n197) );
  DFFRX1 \mv_reg[45][5]  ( .D(n2166), .CK(clk), .RN(n726), .QN(n333) );
  DFFRX1 \mv_reg[2][5]  ( .D(n1822), .CK(clk), .RN(n726), .QN(n275) );
  DFFRX1 \mv_reg[9][5]  ( .D(n1878), .CK(clk), .RN(n726), .QN(n94) );
  DFFRX1 \mv_reg[16][5]  ( .D(n1934), .CK(clk), .RN(n726), .QN(n93) );
  DFFRX1 \mv_reg[23][5]  ( .D(n1990), .CK(clk), .RN(n726), .QN(n274) );
  DFFRX1 \mv_reg[37][5]  ( .D(n2102), .CK(clk), .RN(n727), .QN(n181) );
  DFFRX1 \mv_reg[44][5]  ( .D(n2158), .CK(clk), .RN(n727), .QN(n341) );
  DFFRX1 \mv_reg[1][5]  ( .D(n1814), .CK(clk), .RN(n727), .QN(n291) );
  DFFRX1 \mv_reg[8][5]  ( .D(n1870), .CK(clk), .RN(n727), .QN(n110) );
  DFFRX1 \mv_reg[15][5]  ( .D(n1926), .CK(clk), .RN(n727), .QN(n109) );
  DFFRX1 \mv_reg[22][5]  ( .D(n1982), .CK(clk), .RN(n727), .QN(n290) );
  DFFRX1 \mv_reg[36][5]  ( .D(n2094), .CK(clk), .RN(n727), .QN(n189) );
  DFFRX1 \mv_reg[43][5]  ( .D(n2150), .CK(clk), .RN(n727), .QN(n349) );
  DFFRX1 \mv_reg[0][5]  ( .D(n1806), .CK(clk), .RN(n727), .QN(n128) );
  DFFRX1 \mv_reg[7][5]  ( .D(n1862), .CK(clk), .RN(n727), .QN(n306) );
  DFFRX1 \mv_reg[14][5]  ( .D(n1918), .CK(clk), .RN(n727), .QN(n10) );
  DFFRX1 \mv_reg[21][5]  ( .D(n1974), .CK(clk), .RN(n728), .QN(n120) );
  DFFRX1 \mv_reg[28][5]  ( .D(n2030), .CK(clk), .RN(n728), .QN(n205) );
  DFFRX1 \mv_reg[35][5]  ( .D(n2086), .CK(clk), .RN(n728), .QN(n307) );
  DFFRX1 \mv_reg[42][5]  ( .D(n2142), .CK(clk), .RN(n728), .QN(n136) );
  DFFRX1 \mv_reg[48][4]  ( .D(n2191), .CK(clk), .RN(n728), .QN(n359) );
  DFFRX1 \mv_reg[5][4]  ( .D(n1847), .CK(clk), .RN(n728), .QN(n225) );
  DFFRX1 \mv_reg[12][4]  ( .D(n1903), .CK(clk), .RN(n728), .QN(n44) );
  DFFRX1 \mv_reg[19][4]  ( .D(n1959), .CK(clk), .RN(n728), .QN(n43) );
  DFFRX1 \mv_reg[26][4]  ( .D(n2015), .CK(clk), .RN(n728), .QN(n224) );
  DFFRX1 \mv_reg[40][4]  ( .D(n2127), .CK(clk), .RN(n728), .QN(n164) );
  DFFRX1 \mv_reg[47][4]  ( .D(n2183), .CK(clk), .RN(n728), .QN(n364) );
  DFFRX1 \mv_reg[4][4]  ( .D(n1839), .CK(clk), .RN(n729), .QN(n241) );
  DFFRX1 \mv_reg[11][4]  ( .D(n1895), .CK(clk), .RN(n729), .QN(n60) );
  DFFRX1 \mv_reg[18][4]  ( .D(n1951), .CK(clk), .RN(n729), .QN(n59) );
  DFFRX1 \mv_reg[25][4]  ( .D(n2007), .CK(clk), .RN(n729), .QN(n240) );
  DFFRX1 \mv_reg[39][4]  ( .D(n2119), .CK(clk), .RN(n729), .QN(n172) );
  DFFRX1 \mv_reg[46][4]  ( .D(n2175), .CK(clk), .RN(n729), .QN(n324) );
  DFFRX1 \mv_reg[3][4]  ( .D(n1831), .CK(clk), .RN(n729), .QN(n257) );
  DFFRX1 \mv_reg[10][4]  ( .D(n1887), .CK(clk), .RN(n729), .QN(n76) );
  DFFRX1 \mv_reg[17][4]  ( .D(n1943), .CK(clk), .RN(n729), .QN(n75) );
  DFFRX1 \mv_reg[24][4]  ( .D(n1999), .CK(clk), .RN(n729), .QN(n256) );
  DFFRX1 \mv_reg[38][4]  ( .D(n2111), .CK(clk), .RN(n730), .QN(n196) );
  DFFRX1 \mv_reg[45][4]  ( .D(n2167), .CK(clk), .RN(n730), .QN(n332) );
  DFFRX1 \mv_reg[2][4]  ( .D(n1823), .CK(clk), .RN(n730), .QN(n273) );
  DFFRX1 \mv_reg[9][4]  ( .D(n1879), .CK(clk), .RN(n730), .QN(n92) );
  DFFRX1 \mv_reg[16][4]  ( .D(n1935), .CK(clk), .RN(n730), .QN(n91) );
  DFFRX1 \mv_reg[23][4]  ( .D(n1991), .CK(clk), .RN(n730), .QN(n272) );
  DFFRX1 \mv_reg[37][4]  ( .D(n2103), .CK(clk), .RN(n730), .QN(n180) );
  DFFRX1 \mv_reg[44][4]  ( .D(n2159), .CK(clk), .RN(n730), .QN(n340) );
  DFFRX1 \mv_reg[1][4]  ( .D(n1815), .CK(clk), .RN(n730), .QN(n289) );
  DFFRX1 \mv_reg[8][4]  ( .D(n1871), .CK(clk), .RN(n730), .QN(n108) );
  DFFRX1 \mv_reg[15][4]  ( .D(n1927), .CK(clk), .RN(n730), .QN(n107) );
  DFFRX1 \mv_reg[22][4]  ( .D(n1983), .CK(clk), .RN(n731), .QN(n288) );
  DFFRX1 \mv_reg[36][4]  ( .D(n2095), .CK(clk), .RN(n731), .QN(n188) );
  DFFRX1 \mv_reg[43][4]  ( .D(n2151), .CK(clk), .RN(n731), .QN(n348) );
  DFFRX1 \mv_reg[0][4]  ( .D(n1807), .CK(clk), .RN(n731), .QN(n127) );
  DFFRX1 \mv_reg[7][4]  ( .D(n1863), .CK(clk), .RN(n731), .QN(n304) );
  DFFRX1 \mv_reg[14][4]  ( .D(n1919), .CK(clk), .RN(n731), .QN(n9) );
  DFFRX1 \mv_reg[21][4]  ( .D(n1975), .CK(clk), .RN(n731), .QN(n119) );
  DFFRX1 \mv_reg[28][4]  ( .D(n2031), .CK(clk), .RN(n731), .QN(n204) );
  DFFRX1 \mv_reg[35][4]  ( .D(n2087), .CK(clk), .RN(n731), .QN(n305) );
  DFFRX1 \mv_reg[42][4]  ( .D(n2143), .CK(clk), .RN(n731), .QN(n135) );
  DFFRX1 \mv_reg[48][3]  ( .D(n2192), .CK(clk), .RN(n731), .QN(n358) );
  DFFRX1 \mv_reg[5][3]  ( .D(n1848), .CK(clk), .RN(n732), .QN(n223) );
  DFFRX1 \mv_reg[12][3]  ( .D(n1904), .CK(clk), .RN(n732), .QN(n42) );
  DFFRX1 \mv_reg[19][3]  ( .D(n1960), .CK(clk), .RN(n732), .QN(n41) );
  DFFRX1 \mv_reg[26][3]  ( .D(n2016), .CK(clk), .RN(n732), .QN(n222) );
  DFFRX1 \mv_reg[40][3]  ( .D(n2128), .CK(clk), .RN(n732), .QN(n163) );
  DFFRX1 \mv_reg[47][3]  ( .D(n2184), .CK(clk), .RN(n732), .QN(n363) );
  DFFRX1 \mv_reg[4][3]  ( .D(n1840), .CK(clk), .RN(n732), .QN(n239) );
  DFFRX1 \mv_reg[11][3]  ( .D(n1896), .CK(clk), .RN(n732), .QN(n58) );
  DFFRX1 \mv_reg[18][3]  ( .D(n1952), .CK(clk), .RN(n732), .QN(n57) );
  DFFRX1 \mv_reg[25][3]  ( .D(n2008), .CK(clk), .RN(n732), .QN(n238) );
  DFFRX1 \mv_reg[39][3]  ( .D(n2120), .CK(clk), .RN(n733), .QN(n171) );
  DFFRX1 \mv_reg[46][3]  ( .D(n2176), .CK(clk), .RN(n733), .QN(n323) );
  DFFRX1 \mv_reg[3][3]  ( .D(n1832), .CK(clk), .RN(n733), .QN(n255) );
  DFFRX1 \mv_reg[10][3]  ( .D(n1888), .CK(clk), .RN(n733), .QN(n74) );
  DFFRX1 \mv_reg[17][3]  ( .D(n1944), .CK(clk), .RN(n733), .QN(n73) );
  DFFRX1 \mv_reg[24][3]  ( .D(n2000), .CK(clk), .RN(n733), .QN(n254) );
  DFFRX1 \mv_reg[38][3]  ( .D(n2112), .CK(clk), .RN(n733), .QN(n195) );
  DFFRX1 \mv_reg[45][3]  ( .D(n2168), .CK(clk), .RN(n733), .QN(n331) );
  DFFRX1 \mv_reg[2][3]  ( .D(n1824), .CK(clk), .RN(n733), .QN(n271) );
  DFFRX1 \mv_reg[9][3]  ( .D(n1880), .CK(clk), .RN(n733), .QN(n90) );
  DFFRX1 \mv_reg[16][3]  ( .D(n1936), .CK(clk), .RN(n733), .QN(n89) );
  DFFRX1 \mv_reg[23][3]  ( .D(n1992), .CK(clk), .RN(n734), .QN(n270) );
  DFFRX1 \mv_reg[37][3]  ( .D(n2104), .CK(clk), .RN(n734), .QN(n179) );
  DFFRX1 \mv_reg[44][3]  ( .D(n2160), .CK(clk), .RN(n734), .QN(n339) );
  DFFRX1 \mv_reg[1][3]  ( .D(n1816), .CK(clk), .RN(n734), .QN(n287) );
  DFFRX1 \mv_reg[8][3]  ( .D(n1872), .CK(clk), .RN(n734), .QN(n106) );
  DFFRX1 \mv_reg[15][3]  ( .D(n1928), .CK(clk), .RN(n734), .QN(n105) );
  DFFRX1 \mv_reg[22][3]  ( .D(n1984), .CK(clk), .RN(n734), .QN(n286) );
  DFFRX1 \mv_reg[36][3]  ( .D(n2096), .CK(clk), .RN(n734), .QN(n187) );
  DFFRX1 \mv_reg[43][3]  ( .D(n2152), .CK(clk), .RN(n734), .QN(n347) );
  DFFRX1 \mv_reg[0][3]  ( .D(n1808), .CK(clk), .RN(n734), .QN(n126) );
  DFFRX1 \mv_reg[7][3]  ( .D(n1864), .CK(clk), .RN(n735), .QN(n302) );
  DFFRX1 \mv_reg[14][3]  ( .D(n1920), .CK(clk), .RN(n735), .QN(n8) );
  DFFRX1 \mv_reg[21][3]  ( .D(n1976), .CK(clk), .RN(n735), .QN(n118) );
  DFFRX1 \mv_reg[28][3]  ( .D(n2032), .CK(clk), .RN(n735), .QN(n203) );
  DFFRX1 \mv_reg[35][3]  ( .D(n2088), .CK(clk), .RN(n735), .QN(n303) );
  DFFRX1 \mv_reg[42][3]  ( .D(n2144), .CK(clk), .RN(n735), .QN(n134) );
  DFFRX1 \mv_reg[48][2]  ( .D(n2193), .CK(clk), .RN(n735), .QN(n354) );
  DFFRX1 \mv_reg[5][2]  ( .D(n1849), .CK(clk), .RN(n735), .QN(n221) );
  DFFRX1 \mv_reg[12][2]  ( .D(n1905), .CK(clk), .RN(n735), .QN(n40) );
  DFFRX1 \mv_reg[19][2]  ( .D(n1961), .CK(clk), .RN(n735), .QN(n39) );
  DFFRX1 \mv_reg[26][2]  ( .D(n2017), .CK(clk), .RN(n735), .QN(n220) );
  DFFRX1 \mv_reg[40][2]  ( .D(n2129), .CK(clk), .RN(n736), .QN(n162) );
  DFFRX1 \mv_reg[47][2]  ( .D(n2185), .CK(clk), .RN(n736), .QN(n357) );
  DFFRX1 \mv_reg[4][2]  ( .D(n1841), .CK(clk), .RN(n736), .QN(n237) );
  DFFRX1 \mv_reg[11][2]  ( .D(n1897), .CK(clk), .RN(n736), .QN(n56) );
  DFFRX1 \mv_reg[18][2]  ( .D(n1953), .CK(clk), .RN(n736), .QN(n55) );
  DFFRX1 \mv_reg[25][2]  ( .D(n2009), .CK(clk), .RN(n736), .QN(n236) );
  DFFRX1 \mv_reg[39][2]  ( .D(n2121), .CK(clk), .RN(n736), .QN(n170) );
  DFFRX1 \mv_reg[46][2]  ( .D(n2177), .CK(clk), .RN(n736), .QN(n322) );
  DFFRX1 \mv_reg[3][2]  ( .D(n1833), .CK(clk), .RN(n736), .QN(n253) );
  DFFRX1 \mv_reg[10][2]  ( .D(n1889), .CK(clk), .RN(n736), .QN(n72) );
  DFFRX1 \mv_reg[17][2]  ( .D(n1945), .CK(clk), .RN(n736), .QN(n71) );
  DFFRX1 \mv_reg[24][2]  ( .D(n2001), .CK(clk), .RN(n737), .QN(n252) );
  DFFRX1 \mv_reg[38][2]  ( .D(n2113), .CK(clk), .RN(n737), .QN(n194) );
  DFFRX1 \mv_reg[45][2]  ( .D(n2169), .CK(clk), .RN(n737), .QN(n330) );
  DFFRX1 \mv_reg[2][2]  ( .D(n1825), .CK(clk), .RN(n737), .QN(n269) );
  DFFRX1 \mv_reg[9][2]  ( .D(n1881), .CK(clk), .RN(n737), .QN(n88) );
  DFFRX1 \mv_reg[16][2]  ( .D(n1937), .CK(clk), .RN(n737), .QN(n87) );
  DFFRX1 \mv_reg[23][2]  ( .D(n1993), .CK(clk), .RN(n737), .QN(n268) );
  DFFRX1 \mv_reg[37][2]  ( .D(n2105), .CK(clk), .RN(n737), .QN(n178) );
  DFFRX1 \mv_reg[44][2]  ( .D(n2161), .CK(clk), .RN(n737), .QN(n338) );
  DFFRX1 \mv_reg[1][2]  ( .D(n1817), .CK(clk), .RN(n737), .QN(n285) );
  DFFRX1 \mv_reg[8][2]  ( .D(n1873), .CK(clk), .RN(n738), .QN(n104) );
  DFFRX1 \mv_reg[15][2]  ( .D(n1929), .CK(clk), .RN(n738), .QN(n103) );
  DFFRX1 \mv_reg[22][2]  ( .D(n1985), .CK(clk), .RN(n738), .QN(n284) );
  DFFRX1 \mv_reg[36][2]  ( .D(n2097), .CK(clk), .RN(n738), .QN(n186) );
  DFFRX1 \mv_reg[43][2]  ( .D(n2153), .CK(clk), .RN(n738), .QN(n346) );
  DFFRX1 \mv_reg[0][2]  ( .D(n1809), .CK(clk), .RN(n738), .QN(n125) );
  DFFRX1 \mv_reg[7][2]  ( .D(n1865), .CK(clk), .RN(n738), .QN(n300) );
  DFFRX1 \mv_reg[14][2]  ( .D(n1921), .CK(clk), .RN(n738), .QN(n7) );
  DFFRX1 \mv_reg[21][2]  ( .D(n1977), .CK(clk), .RN(n738), .QN(n117) );
  DFFRX1 \mv_reg[28][2]  ( .D(n2033), .CK(clk), .RN(n738), .QN(n202) );
  DFFRX1 \mv_reg[35][2]  ( .D(n2089), .CK(clk), .RN(n738), .QN(n301) );
  DFFRX1 \mv_reg[42][2]  ( .D(n2145), .CK(clk), .RN(n739), .QN(n133) );
  DFFRX1 \mv_reg[48][1]  ( .D(n2194), .CK(clk), .RN(n739), .QN(n353) );
  DFFRX1 \mv_reg[5][1]  ( .D(n1850), .CK(clk), .RN(n739), .QN(n219) );
  DFFRX1 \mv_reg[12][1]  ( .D(n1906), .CK(clk), .RN(n739), .QN(n38) );
  DFFRX1 \mv_reg[19][1]  ( .D(n1962), .CK(clk), .RN(n739), .QN(n37) );
  DFFRX1 \mv_reg[26][1]  ( .D(n2018), .CK(clk), .RN(n739), .QN(n218) );
  DFFRX1 \mv_reg[40][1]  ( .D(n2130), .CK(clk), .RN(n739), .QN(n161) );
  DFFRX1 \mv_reg[47][1]  ( .D(n2186), .CK(clk), .RN(n739), .QN(n356) );
  DFFRX1 \mv_reg[4][1]  ( .D(n1842), .CK(clk), .RN(n739), .QN(n235) );
  DFFRX1 \mv_reg[11][1]  ( .D(n1898), .CK(clk), .RN(n739), .QN(n54) );
  DFFRX1 \mv_reg[18][1]  ( .D(n1954), .CK(clk), .RN(n739), .QN(n53) );
  DFFRX1 \mv_reg[25][1]  ( .D(n2010), .CK(clk), .RN(n740), .QN(n234) );
  DFFRX1 \mv_reg[39][1]  ( .D(n2122), .CK(clk), .RN(n740), .QN(n169) );
  DFFRX1 \mv_reg[46][1]  ( .D(n2178), .CK(clk), .RN(n740), .QN(n321) );
  DFFRX1 \mv_reg[3][1]  ( .D(n1834), .CK(clk), .RN(n740), .QN(n251) );
  DFFRX1 \mv_reg[10][1]  ( .D(n1890), .CK(clk), .RN(n740), .QN(n70) );
  DFFRX1 \mv_reg[17][1]  ( .D(n1946), .CK(clk), .RN(n740), .QN(n69) );
  DFFRX1 \mv_reg[24][1]  ( .D(n2002), .CK(clk), .RN(n740), .QN(n250) );
  DFFRX1 \mv_reg[38][1]  ( .D(n2114), .CK(clk), .RN(n740), .QN(n193) );
  DFFRX1 \mv_reg[45][1]  ( .D(n2170), .CK(clk), .RN(n740), .QN(n329) );
  DFFRX1 \mv_reg[2][1]  ( .D(n1826), .CK(clk), .RN(n740), .QN(n267) );
  DFFRX1 \mv_reg[9][1]  ( .D(n1882), .CK(clk), .RN(n741), .QN(n86) );
  DFFRX1 \mv_reg[16][1]  ( .D(n1938), .CK(clk), .RN(n741), .QN(n85) );
  DFFRX1 \mv_reg[23][1]  ( .D(n1994), .CK(clk), .RN(n741), .QN(n266) );
  DFFRX1 \mv_reg[37][1]  ( .D(n2106), .CK(clk), .RN(n741), .QN(n177) );
  DFFRX1 \mv_reg[44][1]  ( .D(n2162), .CK(clk), .RN(n741), .QN(n337) );
  DFFRX1 \mv_reg[1][1]  ( .D(n1818), .CK(clk), .RN(n741), .QN(n283) );
  DFFRX1 \mv_reg[8][1]  ( .D(n1874), .CK(clk), .RN(n741), .QN(n102) );
  DFFRX1 \mv_reg[15][1]  ( .D(n1930), .CK(clk), .RN(n741), .QN(n101) );
  DFFRX1 \mv_reg[22][1]  ( .D(n1986), .CK(clk), .RN(n741), .QN(n282) );
  DFFRX1 \mv_reg[36][1]  ( .D(n2098), .CK(clk), .RN(n741), .QN(n185) );
  DFFRX1 \mv_reg[43][1]  ( .D(n2154), .CK(clk), .RN(n742), .QN(n345) );
  DFFRX1 \mv_reg[0][1]  ( .D(n1810), .CK(clk), .RN(n742), .QN(n124) );
  DFFRX1 \mv_reg[7][1]  ( .D(n1866), .CK(clk), .RN(n742), .QN(n298) );
  DFFRX1 \mv_reg[14][1]  ( .D(n1922), .CK(clk), .RN(n742), .QN(n6) );
  DFFRX1 \mv_reg[21][1]  ( .D(n1978), .CK(clk), .RN(n742), .QN(n116) );
  DFFRX1 \mv_reg[28][1]  ( .D(n2034), .CK(clk), .RN(n742), .QN(n201) );
  DFFRX1 \mv_reg[35][1]  ( .D(n2090), .CK(clk), .RN(n742), .QN(n299) );
  DFFRX1 \mv_reg[42][1]  ( .D(n2146), .CK(clk), .RN(n742), .QN(n132) );
  DFFRX1 \mv_reg[48][0]  ( .D(n2195), .CK(clk), .RN(n742), .QN(n352) );
  DFFRX1 \mv_reg[5][0]  ( .D(n1851), .CK(clk), .RN(n742), .QN(n217) );
  DFFRX1 \mv_reg[12][0]  ( .D(n1907), .CK(clk), .RN(n742), .QN(n36) );
  DFFRX1 \mv_reg[19][0]  ( .D(n1963), .CK(clk), .RN(n742), .QN(n35) );
  DFFRX1 \mv_reg[26][0]  ( .D(n2019), .CK(clk), .RN(n743), .QN(n216) );
  DFFRX1 \mv_reg[40][0]  ( .D(n2131), .CK(clk), .RN(n743), .QN(n160) );
  DFFRX1 \mv_reg[47][0]  ( .D(n2187), .CK(clk), .RN(n743), .QN(n355) );
  DFFRX1 \mv_reg[4][0]  ( .D(n1843), .CK(clk), .RN(n743), .QN(n233) );
  DFFRX1 \mv_reg[11][0]  ( .D(n1899), .CK(clk), .RN(n743), .QN(n52) );
  DFFRX1 \mv_reg[18][0]  ( .D(n1955), .CK(clk), .RN(n743), .QN(n51) );
  DFFRX1 \mv_reg[25][0]  ( .D(n2011), .CK(clk), .RN(n743), .QN(n232) );
  DFFRX1 \mv_reg[39][0]  ( .D(n2123), .CK(clk), .RN(n743), .QN(n168) );
  DFFRX1 \mv_reg[46][0]  ( .D(n2179), .CK(clk), .RN(n743), .QN(n320) );
  DFFRX1 \mv_reg[3][0]  ( .D(n1835), .CK(clk), .RN(n743), .QN(n249) );
  DFFRX1 \mv_reg[10][0]  ( .D(n1891), .CK(clk), .RN(n744), .QN(n68) );
  DFFRX1 \mv_reg[17][0]  ( .D(n1947), .CK(clk), .RN(n744), .QN(n67) );
  DFFRX1 \mv_reg[24][0]  ( .D(n2003), .CK(clk), .RN(n744), .QN(n248) );
  DFFRX1 \mv_reg[38][0]  ( .D(n2115), .CK(clk), .RN(n744), .QN(n192) );
  DFFRX1 \mv_reg[45][0]  ( .D(n2171), .CK(clk), .RN(n744), .QN(n328) );
  DFFRX1 \mv_reg[2][0]  ( .D(n1827), .CK(clk), .RN(n744), .QN(n265) );
  DFFRX1 \mv_reg[9][0]  ( .D(n1883), .CK(clk), .RN(n744), .QN(n84) );
  DFFRX1 \mv_reg[16][0]  ( .D(n1939), .CK(clk), .RN(n744), .QN(n83) );
  DFFRX1 \mv_reg[23][0]  ( .D(n1995), .CK(clk), .RN(n744), .QN(n264) );
  DFFRX1 \mv_reg[37][0]  ( .D(n2107), .CK(clk), .RN(n744), .QN(n176) );
  DFFRX1 \mv_reg[44][0]  ( .D(n2163), .CK(clk), .RN(n745), .QN(n336) );
  DFFRX1 \mv_reg[1][0]  ( .D(n1819), .CK(clk), .RN(n745), .QN(n281) );
  DFFRX1 \mv_reg[8][0]  ( .D(n1875), .CK(clk), .RN(n745), .QN(n100) );
  DFFRX1 \mv_reg[15][0]  ( .D(n1931), .CK(clk), .RN(n745), .QN(n99) );
  DFFRX1 \mv_reg[22][0]  ( .D(n1987), .CK(clk), .RN(n745), .QN(n280) );
  DFFRX1 \mv_reg[36][0]  ( .D(n2099), .CK(clk), .RN(n745), .QN(n184) );
  DFFRX1 \mv_reg[43][0]  ( .D(n2155), .CK(clk), .RN(n745), .QN(n344) );
  DFFRX1 \mv_reg[0][0]  ( .D(n1811), .CK(clk), .RN(n745), .QN(n123) );
  DFFRX1 \mv_reg[7][0]  ( .D(n1867), .CK(clk), .RN(n745), .QN(n296) );
  DFFRX1 \mv_reg[14][0]  ( .D(n1923), .CK(clk), .RN(n745), .QN(n5) );
  DFFRX1 \mv_reg[21][0]  ( .D(n1979), .CK(clk), .RN(n745), .QN(n115) );
  DFFRX1 \mv_reg[28][0]  ( .D(n2035), .CK(clk), .RN(n746), .QN(n200) );
  DFFRX1 \mv_reg[35][0]  ( .D(n2091), .CK(clk), .RN(n746), .QN(n297) );
  DFFRX1 \mv_reg[42][0]  ( .D(n2147), .CK(clk), .RN(n746), .QN(n131) );
  DFFRX1 \mv_reg[34][7]  ( .D(n2076), .CK(clk), .RN(n716), .Q(n1435), .QN(n375) );
  DFFRX1 \mv_reg[34][6]  ( .D(n2077), .CK(clk), .RN(n716), .Q(n1436), .QN(n374) );
  DFFRX1 \mv_reg[34][5]  ( .D(n2078), .CK(clk), .RN(n716), .Q(n1437), .QN(n373) );
  DFFRX1 \mv_reg[34][4]  ( .D(n2079), .CK(clk), .RN(n716), .Q(n1438), .QN(n372) );
  DFFRX1 \mv_reg[34][3]  ( .D(n2080), .CK(clk), .RN(n716), .Q(n1439), .QN(n371) );
  DFFRX1 \mv_reg[34][2]  ( .D(n2081), .CK(clk), .RN(n716), .Q(n1440), .QN(n370) );
  DFFRX1 \mv_reg[34][1]  ( .D(n2082), .CK(clk), .RN(n716), .Q(n1441), .QN(n369) );
  DFFRX1 \mv_reg[34][0]  ( .D(n2083), .CK(clk), .RN(n716), .Q(n1442), .QN(n368) );
  DFFRX1 \mv_reg[33][7]  ( .D(n2068), .CK(clk), .RN(n718), .Q(n1427), .QN(n383) );
  DFFRX1 \mv_reg[32][7]  ( .D(n2060), .CK(clk), .RN(n718), .Q(n1419), .QN(n391) );
  DFFRX1 \mv_reg[31][7]  ( .D(n2052), .CK(clk), .RN(n719), .Q(n1411), .QN(n399) );
  DFFRX1 \mv_reg[30][7]  ( .D(n2044), .CK(clk), .RN(n719), .Q(n1403), .QN(n407) );
  DFFRX1 \mv_reg[29][7]  ( .D(n2036), .CK(clk), .RN(n720), .Q(n1395), .QN(n415) );
  DFFRX1 \mv_reg[33][6]  ( .D(n2069), .CK(clk), .RN(n721), .Q(n1428), .QN(n382) );
  DFFRX1 \mv_reg[32][6]  ( .D(n2061), .CK(clk), .RN(n722), .Q(n1420), .QN(n390) );
  DFFRX1 \mv_reg[31][6]  ( .D(n2053), .CK(clk), .RN(n722), .Q(n1412), .QN(n398) );
  DFFRX1 \mv_reg[30][6]  ( .D(n2045), .CK(clk), .RN(n723), .Q(n1404), .QN(n406) );
  DFFRX1 \mv_reg[29][6]  ( .D(n2037), .CK(clk), .RN(n723), .Q(n1396), .QN(n414) );
  DFFRX1 \mv_reg[33][5]  ( .D(n2070), .CK(clk), .RN(n725), .Q(n1429), .QN(n381) );
  DFFRX1 \mv_reg[32][5]  ( .D(n2062), .CK(clk), .RN(n725), .Q(n1421), .QN(n389) );
  DFFRX1 \mv_reg[31][5]  ( .D(n2054), .CK(clk), .RN(n726), .Q(n1413), .QN(n397) );
  DFFRX1 \mv_reg[30][5]  ( .D(n2046), .CK(clk), .RN(n726), .Q(n1405), .QN(n405) );
  DFFRX1 \mv_reg[29][5]  ( .D(n2038), .CK(clk), .RN(n727), .Q(n1397), .QN(n413) );
  DFFRX1 \mv_reg[33][4]  ( .D(n2071), .CK(clk), .RN(n728), .Q(n1430), .QN(n380) );
  DFFRX1 \mv_reg[32][4]  ( .D(n2063), .CK(clk), .RN(n729), .Q(n1422), .QN(n388) );
  DFFRX1 \mv_reg[31][4]  ( .D(n2055), .CK(clk), .RN(n729), .Q(n1414), .QN(n396) );
  DFFRX1 \mv_reg[30][4]  ( .D(n2047), .CK(clk), .RN(n730), .Q(n1406), .QN(n404) );
  DFFRX1 \mv_reg[29][4]  ( .D(n2039), .CK(clk), .RN(n731), .Q(n1398), .QN(n412) );
  DFFRX1 \mv_reg[33][3]  ( .D(n2072), .CK(clk), .RN(n732), .Q(n1431), .QN(n379) );
  DFFRX1 \mv_reg[32][3]  ( .D(n2064), .CK(clk), .RN(n732), .Q(n1423), .QN(n387) );
  DFFRX1 \mv_reg[31][3]  ( .D(n2056), .CK(clk), .RN(n733), .Q(n1415), .QN(n395) );
  DFFRX1 \mv_reg[30][3]  ( .D(n2048), .CK(clk), .RN(n734), .Q(n1407), .QN(n403) );
  DFFRX1 \mv_reg[29][3]  ( .D(n2040), .CK(clk), .RN(n734), .Q(n1399), .QN(n411) );
  DFFRX1 \mv_reg[33][2]  ( .D(n2073), .CK(clk), .RN(n735), .Q(n1432), .QN(n378) );
  DFFRX1 \mv_reg[32][2]  ( .D(n2065), .CK(clk), .RN(n736), .Q(n1424), .QN(n386) );
  DFFRX1 \mv_reg[31][2]  ( .D(n2057), .CK(clk), .RN(n737), .Q(n1416), .QN(n394) );
  DFFRX1 \mv_reg[30][2]  ( .D(n2049), .CK(clk), .RN(n737), .Q(n1408), .QN(n402) );
  DFFRX1 \mv_reg[29][2]  ( .D(n2041), .CK(clk), .RN(n738), .Q(n1400), .QN(n410) );
  DFFRX1 \mv_reg[33][1]  ( .D(n2074), .CK(clk), .RN(n739), .Q(n1433), .QN(n377) );
  DFFRX1 \mv_reg[32][1]  ( .D(n2066), .CK(clk), .RN(n740), .Q(n1425), .QN(n385) );
  DFFRX1 \mv_reg[31][1]  ( .D(n2058), .CK(clk), .RN(n740), .Q(n1417), .QN(n393) );
  DFFRX1 \mv_reg[30][1]  ( .D(n2050), .CK(clk), .RN(n741), .Q(n1409), .QN(n401) );
  DFFRX1 \mv_reg[29][1]  ( .D(n2042), .CK(clk), .RN(n741), .Q(n1401), .QN(n409) );
  DFFRX1 \mv_reg[33][0]  ( .D(n2075), .CK(clk), .RN(n743), .Q(n1434), .QN(n376) );
  DFFRX1 \mv_reg[32][0]  ( .D(n2067), .CK(clk), .RN(n743), .Q(n1426), .QN(n384) );
  DFFRX1 \mv_reg[31][0]  ( .D(n2059), .CK(clk), .RN(n744), .Q(n1418), .QN(n392) );
  DFFRX1 \mv_reg[30][0]  ( .D(n2051), .CK(clk), .RN(n744), .Q(n1410), .QN(n400) );
  DFFRX1 \mv_reg[29][0]  ( .D(n2043), .CK(clk), .RN(n745), .Q(n1402), .QN(n408) );
  DFFRX1 \lc_reg[7]  ( .D(n2294), .CK(clk), .RN(n706), .Q(lc[7]), .QN(n1464)
         );
  DFFRX1 \lc_reg[6]  ( .D(n2286), .CK(clk), .RN(n709), .Q(lc[6]), .QN(n1465)
         );
  DFFRX1 \lc_reg[3]  ( .D(n2289), .CK(clk), .RN(n709), .Q(lc[3]), .QN(n1468)
         );
  DFFRX1 \lc_reg[1]  ( .D(n2291), .CK(clk), .RN(n709), .Q(lc[1]), .QN(n1462)
         );
  DFFRX1 \lc_reg[5]  ( .D(n2287), .CK(clk), .RN(n709), .Q(lc[5]), .QN(n1466)
         );
  DFFRX1 \lc_reg[0]  ( .D(n2292), .CK(clk), .RN(n709), .Q(lc[0]), .QN(n1463)
         );
  DFFRX1 \lc_reg[4]  ( .D(n2288), .CK(clk), .RN(n709), .Q(lc[4]), .QN(n1467)
         );
  DFFRX1 \lc_reg[2]  ( .D(n2290), .CK(clk), .RN(n709), .Q(lc[2]), .QN(n1461)
         );
  DFFRX1 \wa_reg[2]  ( .D(n2256), .CK(clk), .RN(n708), .Q(wa[2]) );
  DFFRX1 \wa_reg[3]  ( .D(n2255), .CK(clk), .RN(n708), .Q(wa[3]) );
  DFFRX1 \wa_reg[4]  ( .D(n2254), .CK(clk), .RN(n708), .Q(wa[4]) );
  DFFRX1 \wa_reg[5]  ( .D(n2253), .CK(clk), .RN(n708), .Q(wa[5]) );
  DFFRX1 \wa_reg[6]  ( .D(n2252), .CK(clk), .RN(n708), .Q(wa[6]) );
  DFFRX1 \wa_reg[7]  ( .D(n2251), .CK(clk), .RN(n709), .Q(wa[7]) );
  DFFRX1 \wa_reg[8]  ( .D(n2250), .CK(clk), .RN(n709), .Q(wa[8]) );
  DFFRX1 \pc_reg[8]  ( .D(n2281), .CK(clk), .RN(n711), .Q(pc[8]) );
  DFFSX1 \INS_reg[6]  ( .D(n2199), .CK(clk), .SN(n747), .Q(INS[6]), .QN(n813)
         );
  DFFSX1 \INS_reg[5]  ( .D(n2200), .CK(clk), .SN(n747), .Q(INS[5]), .QN(n814)
         );
  DFFSX1 \DEL_reg[7]  ( .D(n1796), .CK(clk), .SN(n746), .Q(DEL[7]), .QN(n1387)
         );
  DFFSX1 \INS_reg[7]  ( .D(n2198), .CK(clk), .SN(n747), .Q(INS[7]), .QN(n812)
         );
  DFFRX1 \pc_reg[13]  ( .D(n2295), .CK(clk), .RN(n710), .Q(pc[13]) );
  DFFRX1 \state_reg[1]  ( .D(state_next[1]), .CK(clk), .RN(n706), .Q(state[1]), 
        .QN(n3) );
  DFFRX1 \state_reg[2]  ( .D(state_next[2]), .CK(clk), .RN(n706), .Q(state[2]), 
        .QN(n18) );
  DFFRX1 \wc_reg[9]  ( .D(n2273), .CK(clk), .RN(n706), .Q(wc[9]) );
  DFFRX1 \state_reg[0]  ( .D(state_next[0]), .CK(clk), .RN(n706), .Q(state[0]), 
        .QN(n147) );
  DFFRX1 \wa_reg[1]  ( .D(n2257), .CK(clk), .RN(n708), .Q(wa[1]) );
  DFFRX1 \wc_reg[5]  ( .D(n2269), .CK(clk), .RN(n707), .Q(wc[5]) );
  DFFRX1 \wc_reg[4]  ( .D(n2268), .CK(clk), .RN(n707), .Q(wc[4]) );
  DFFRX1 \wc_reg[3]  ( .D(n2267), .CK(clk), .RN(n707), .Q(wc[3]) );
  DFFRX1 \wc_reg[6]  ( .D(n2270), .CK(clk), .RN(n707), .Q(wc[6]) );
  DFFRX1 \pc_reg[10]  ( .D(n2283), .CK(clk), .RN(n711), .Q(pc[10]) );
  DFFRX1 \pc_reg[11]  ( .D(n2284), .CK(clk), .RN(n711), .Q(pc[11]) );
  DFFRX1 \wc_reg[1]  ( .D(n2265), .CK(clk), .RN(n707), .Q(wc[1]) );
  DFFRX1 \pc_reg[9]  ( .D(n2282), .CK(clk), .RN(n711), .Q(pc[9]) );
  DFFRX1 \pc_reg[1]  ( .D(n2274), .CK(clk), .RN(n711), .Q(pc[1]) );
  DFFRX1 \pc_reg[3]  ( .D(n2276), .CK(clk), .RN(n711), .Q(pc[3]) );
  DFFRX1 \wc_reg[2]  ( .D(n2266), .CK(clk), .RN(n707), .Q(wc[2]) );
  DFFRX1 \pc_reg[2]  ( .D(n2275), .CK(clk), .RN(n711), .Q(pc[2]) );
  DFFRX1 \pc_reg[12]  ( .D(n2285), .CK(clk), .RN(n711), .Q(pc[12]) );
  DFFRX1 \pc_reg[6]  ( .D(n2279), .CK(clk), .RN(n711), .Q(pc[6]) );
  DFFRX1 \pc_reg[4]  ( .D(n2277), .CK(clk), .RN(n711), .Q(pc[4]) );
  DFFRX1 \pc_reg[5]  ( .D(n2278), .CK(clk), .RN(n711), .Q(pc[5]) );
  DFFRX1 \wc_reg[7]  ( .D(n2271), .CK(clk), .RN(n707), .Q(wc[7]) );
  DFFRX1 \wc_reg[8]  ( .D(n2272), .CK(clk), .RN(n707), .Q(wc[8]) );
  DFFRX1 \wa_reg[0]  ( .D(n2258), .CK(clk), .RN(n708), .Q(wa[0]) );
  DFFRX1 \pc_reg[0]  ( .D(n2296), .CK(clk), .RN(n706), .Q(pc[0]) );
  DFFRX1 \wc_reg[0]  ( .D(n2264), .CK(clk), .RN(n707), .Q(wc[0]) );
  DFFRX1 \pc_reg[7]  ( .D(n2280), .CK(clk), .RN(n711), .Q(pc[7]), .QN(n148) );
  DFFSX1 \INS_reg[4]  ( .D(n2201), .CK(clk), .SN(n747), .Q(INS[4]), .QN(n815)
         );
  DFFSX1 \INS_reg[3]  ( .D(n2202), .CK(clk), .SN(n746), .Q(INS[3]), .QN(n816)
         );
  DFFSX1 \INS_reg[2]  ( .D(n2203), .CK(clk), .SN(n746), .Q(INS[2]), .QN(n817)
         );
  DFFSX1 \INS_reg[1]  ( .D(n2204), .CK(clk), .SN(n746), .Q(INS[1]), .QN(n818)
         );
  DFFSX1 \INS_reg[0]  ( .D(n2205), .CK(clk), .SN(n746), .Q(INS[0]), .QN(n819)
         );
  DFFSX1 \DEL_reg[6]  ( .D(n1797), .CK(clk), .SN(n746), .Q(DEL[6]), .QN(n1388)
         );
  DFFSX1 \DEL_reg[5]  ( .D(n1798), .CK(clk), .SN(n746), .Q(DEL[5]), .QN(n1389)
         );
  DFFSX1 \DEL_reg[4]  ( .D(n1799), .CK(clk), .SN(n746), .Q(DEL[4]), .QN(n1390)
         );
  DFFSX1 \DEL_reg[3]  ( .D(n1800), .CK(clk), .SN(n746), .Q(DEL[3]), .QN(n1391)
         );
  DFFSX1 \DEL_reg[1]  ( .D(n1802), .CK(clk), .SN(n746), .Q(DEL[1]), .QN(n1393)
         );
  DFFSX1 \DEL_reg[0]  ( .D(n1803), .CK(clk), .SN(n746), .Q(DEL[0]), .QN(n1394)
         );
  DFFRX1 \py_reg[7]  ( .D(n2212), .CK(clk), .RN(n710), .Q(py[7]), .QN(n144) );
  DFFRX1 \px_reg[7]  ( .D(n2206), .CK(clk), .RN(n710), .Q(px[7]) );
  DFFRX1 \py_reg[6]  ( .D(n2213), .CK(clk), .RN(n710), .Q(py[6]), .QN(n4) );
  DFFRX1 \px_reg[6]  ( .D(n2207), .CK(clk), .RN(n710), .Q(px[6]), .QN(n2) );
  DFFSX1 \DEL_reg[2]  ( .D(n1801), .CK(clk), .SN(n746), .Q(DEL[2]), .QN(n1392)
         );
  DFFSX1 SE_reg ( .D(n2197), .CK(clk), .SN(n747), .Q(SE) );
  DFFRX1 \py_reg[4]  ( .D(n2215), .CK(clk), .RN(n710), .Q(py[4]), .QN(n16) );
  DFFRX1 \py_reg[3]  ( .D(n2216), .CK(clk), .RN(n710), .Q(py[3]), .QN(n151) );
  DFFRX1 \px_reg[4]  ( .D(n2209), .CK(clk), .RN(n710), .Q(px[4]), .QN(n15) );
  DFFRX1 \py_reg[2]  ( .D(n2217), .CK(clk), .RN(n709), .Q(py[2]), .QN(n146) );
  DFFRX1 \px_reg[3]  ( .D(n2210), .CK(clk), .RN(n710), .Q(px[3]) );
  DFFRX1 \py_reg[5]  ( .D(n2214), .CK(clk), .RN(n710), .Q(py[5]), .QN(n143) );
  DFFRX1 \px_reg[5]  ( .D(n2208), .CK(clk), .RN(n710), .Q(px[5]), .QN(n142) );
  DFFSX1 \px_reg[0]  ( .D(n1470), .CK(clk), .SN(n747), .Q(\r1072/A[0] ), .QN(
        n13) );
  DFFRX1 \px_reg[2]  ( .D(n2211), .CK(clk), .RN(n710), .Q(px[2]) );
  DFFRX1 \rc_reg[1]  ( .D(n2260), .CK(clk), .RN(n706), .Q(rc[1]), .QN(n139) );
  DFFSX1 \py_reg[0]  ( .D(n2219), .CK(clk), .SN(n747), .Q(\r1084/A[0] ), .QN(
        n17) );
  DFFRX1 \rc_reg[4]  ( .D(n2263), .CK(clk), .RN(n706), .Q(rc[4]), .QN(n145) );
  DFFSX1 \px_reg[1]  ( .D(n1469), .CK(clk), .SN(n747), .Q(px[1]), .QN(n141) );
  DFFSX1 \py_reg[1]  ( .D(n2218), .CK(clk), .SN(n747), .Q(py[1]), .QN(n149) );
  DFFRX1 \rc_reg[5]  ( .D(n2293), .CK(clk), .RN(n706), .Q(rc[5]), .QN(n14) );
  DFFRX1 \rc_reg[0]  ( .D(n2259), .CK(clk), .RN(n706), .Q(rc[0]), .QN(n150) );
  DFFRX1 \rc_reg[3]  ( .D(n2262), .CK(clk), .RN(n706), .Q(rc[3]), .QN(n1) );
  DFFRX1 \rc_reg[2]  ( .D(n2261), .CK(clk), .RN(n706), .Q(rc[2]), .QN(n140) );
  MXI2XL U3 ( .A(n195), .B(n979), .S0(n1019), .Y(n2112) );
  MXI2XL U4 ( .A(n363), .B(n959), .S0(n956), .Y(n2184) );
  MXI2XL U5 ( .A(n358), .B(n947), .S0(n944), .Y(n2192) );
  MXI2XL U6 ( .A(n196), .B(n980), .S0(n1019), .Y(n2111) );
  MXI2XL U7 ( .A(n364), .B(n960), .S0(n956), .Y(n2183) );
  MXI2XL U8 ( .A(n359), .B(n948), .S0(n944), .Y(n2191) );
  MXI2XL U9 ( .A(n197), .B(n981), .S0(n1019), .Y(n2110) );
  MXI2XL U10 ( .A(n365), .B(n961), .S0(n956), .Y(n2182) );
  MXI2XL U11 ( .A(n360), .B(n949), .S0(n944), .Y(n2190) );
  MXI2XL U12 ( .A(n198), .B(n982), .S0(n1019), .Y(n2109) );
  MXI2XL U13 ( .A(n366), .B(n962), .S0(n956), .Y(n2181) );
  MXI2XL U14 ( .A(n361), .B(n950), .S0(n944), .Y(n2189) );
  MXI2XL U15 ( .A(n199), .B(n983), .S0(n1019), .Y(n2108) );
  MXI2XL U16 ( .A(n367), .B(n963), .S0(n956), .Y(n2180) );
  MXI2XL U17 ( .A(n362), .B(n951), .S0(n944), .Y(n2188) );
  CLKBUFX3 U18 ( .A(n680), .Y(n677) );
  CLKBUFX3 U19 ( .A(n681), .Y(n676) );
  CLKBUFX3 U20 ( .A(n681), .Y(n675) );
  CLKBUFX3 U21 ( .A(n680), .Y(n678) );
  CLKBUFX3 U22 ( .A(n680), .Y(n679) );
  CLKBUFX3 U23 ( .A(n748), .Y(n746) );
  CLKBUFX3 U24 ( .A(n748), .Y(n745) );
  CLKBUFX3 U25 ( .A(n749), .Y(n744) );
  CLKBUFX3 U26 ( .A(n749), .Y(n743) );
  CLKBUFX3 U27 ( .A(n749), .Y(n742) );
  CLKBUFX3 U28 ( .A(n750), .Y(n741) );
  CLKBUFX3 U29 ( .A(n750), .Y(n740) );
  CLKBUFX3 U30 ( .A(n750), .Y(n739) );
  CLKBUFX3 U31 ( .A(n751), .Y(n738) );
  CLKBUFX3 U32 ( .A(n751), .Y(n737) );
  CLKBUFX3 U33 ( .A(n751), .Y(n736) );
  CLKBUFX3 U34 ( .A(n752), .Y(n735) );
  CLKBUFX3 U35 ( .A(n752), .Y(n734) );
  CLKBUFX3 U36 ( .A(n752), .Y(n733) );
  CLKBUFX3 U37 ( .A(n753), .Y(n732) );
  CLKBUFX3 U38 ( .A(n753), .Y(n731) );
  CLKBUFX3 U39 ( .A(n753), .Y(n730) );
  CLKBUFX3 U40 ( .A(n754), .Y(n729) );
  CLKBUFX3 U41 ( .A(n754), .Y(n728) );
  CLKBUFX3 U42 ( .A(n754), .Y(n727) );
  CLKBUFX3 U43 ( .A(n755), .Y(n726) );
  CLKBUFX3 U44 ( .A(n755), .Y(n725) );
  CLKBUFX3 U45 ( .A(n755), .Y(n724) );
  CLKBUFX3 U46 ( .A(n756), .Y(n723) );
  CLKBUFX3 U47 ( .A(n756), .Y(n722) );
  CLKBUFX3 U48 ( .A(n756), .Y(n721) );
  CLKBUFX3 U49 ( .A(n757), .Y(n720) );
  CLKBUFX3 U50 ( .A(n757), .Y(n719) );
  CLKBUFX3 U51 ( .A(n757), .Y(n718) );
  CLKBUFX3 U52 ( .A(n758), .Y(n717) );
  CLKBUFX3 U53 ( .A(n758), .Y(n716) );
  CLKBUFX3 U54 ( .A(n758), .Y(n715) );
  CLKBUFX3 U55 ( .A(n759), .Y(n714) );
  CLKBUFX3 U56 ( .A(n759), .Y(n713) );
  CLKBUFX3 U57 ( .A(n759), .Y(n712) );
  CLKBUFX3 U58 ( .A(n760), .Y(n711) );
  CLKBUFX3 U59 ( .A(n760), .Y(n710) );
  CLKBUFX3 U60 ( .A(n760), .Y(n709) );
  CLKBUFX3 U61 ( .A(n761), .Y(n708) );
  CLKBUFX3 U62 ( .A(n761), .Y(n707) );
  CLKBUFX3 U63 ( .A(n761), .Y(n706) );
  CLKBUFX3 U64 ( .A(n748), .Y(n747) );
  CLKINVX1 U65 ( .A(n658), .Y(n661) );
  CLKBUFX3 U66 ( .A(n418), .Y(n691) );
  CLKBUFX3 U67 ( .A(n669), .Y(n671) );
  CLKINVX1 U68 ( .A(\r1090/A[0] ), .Y(n704) );
  CLKBUFX3 U69 ( .A(n687), .Y(n686) );
  CLKINVX1 U70 ( .A(n849), .Y(n851) );
  CLKINVX1 U71 ( .A(n692), .Y(n690) );
  CLKBUFX3 U72 ( .A(n1003), .Y(n680) );
  CLKBUFX3 U73 ( .A(n1003), .Y(n681) );
  CLKBUFX3 U74 ( .A(n669), .Y(n672) );
  CLKBUFX3 U75 ( .A(n669), .Y(n673) );
  CLKBUFX3 U76 ( .A(n687), .Y(n685) );
  CLKBUFX3 U77 ( .A(n687), .Y(n684) );
  CLKBUFX3 U78 ( .A(n688), .Y(n683) );
  CLKBUFX3 U79 ( .A(n688), .Y(n682) );
  CLKBUFX3 U80 ( .A(n698), .Y(n701) );
  CLKBUFX3 U81 ( .A(n698), .Y(n702) );
  CLKBUFX3 U82 ( .A(n698), .Y(n700) );
  CLKINVX1 U83 ( .A(n668), .Y(n665) );
  CLKINVX1 U84 ( .A(n692), .Y(n689) );
  CLKBUFX3 U85 ( .A(n418), .Y(n692) );
  CLKBUFX3 U86 ( .A(n765), .Y(n750) );
  CLKBUFX3 U87 ( .A(n765), .Y(n751) );
  CLKBUFX3 U88 ( .A(n765), .Y(n752) );
  CLKBUFX3 U89 ( .A(n764), .Y(n753) );
  CLKBUFX3 U90 ( .A(n764), .Y(n754) );
  CLKBUFX3 U91 ( .A(n764), .Y(n755) );
  CLKBUFX3 U92 ( .A(n763), .Y(n756) );
  CLKBUFX3 U93 ( .A(n763), .Y(n757) );
  CLKBUFX3 U94 ( .A(n763), .Y(n758) );
  CLKBUFX3 U95 ( .A(n762), .Y(n759) );
  CLKBUFX3 U96 ( .A(n762), .Y(n760) );
  CLKBUFX3 U97 ( .A(n762), .Y(n761) );
  CLKBUFX3 U98 ( .A(n766), .Y(n748) );
  CLKBUFX3 U99 ( .A(n766), .Y(n749) );
  CLKINVX1 U100 ( .A(n432), .Y(n634) );
  NOR2X1 U101 ( .A(N1136), .B(\sub_208_2/carry[7] ), .Y(n416) );
  CLKBUFX3 U102 ( .A(rc[1]), .Y(n659) );
  CLKBUFX3 U103 ( .A(rc[1]), .Y(n660) );
  CLKBUFX3 U104 ( .A(rc[1]), .Y(n658) );
  CLKINVX1 U105 ( .A(n580), .Y(n638) );
  CLKBUFX3 U106 ( .A(n1013), .Y(n687) );
  CLKBUFX3 U107 ( .A(n953), .Y(n669) );
  CLKINVX1 U108 ( .A(n696), .Y(n694) );
  CLKINVX1 U109 ( .A(n697), .Y(n693) );
  NOR4BBX1 U110 ( .AN(n800), .BN(n892), .C(n843), .D(n793), .Y(n875) );
  NAND2X1 U111 ( .A(n844), .B(n889), .Y(n861) );
  NOR2BX1 U112 ( .AN(n861), .B(n843), .Y(n859) );
  CLKINVX1 U113 ( .A(n860), .Y(n858) );
  NAND2X1 U114 ( .A(n838), .B(n832), .Y(n833) );
  NAND2X1 U115 ( .A(n834), .B(n790), .Y(n811) );
  OA21XL U116 ( .A0(n851), .A1(n932), .B0(n798), .Y(n928) );
  AND3X2 U117 ( .A(n904), .B(n846), .C(n874), .Y(n868) );
  AND3X2 U118 ( .A(n913), .B(n850), .C(n851), .Y(n834) );
  CLKBUFX3 U119 ( .A(n420), .Y(n668) );
  AND2X2 U120 ( .A(n868), .B(n798), .Y(n862) );
  CLKBUFX3 U121 ( .A(n1087), .Y(n698) );
  CLKBUFX3 U122 ( .A(n1013), .Y(n688) );
  CLKBUFX3 U123 ( .A(n670), .Y(n674) );
  CLKBUFX3 U124 ( .A(n953), .Y(n670) );
  CLKBUFX3 U125 ( .A(n699), .Y(n703) );
  CLKBUFX3 U126 ( .A(n1087), .Y(n699) );
  CLKINVX1 U127 ( .A(n668), .Y(n667) );
  CLKINVX1 U128 ( .A(n668), .Y(n666) );
  NOR2X1 U129 ( .A(n843), .B(n844), .Y(n842) );
  CLKBUFX3 U130 ( .A(n767), .Y(n765) );
  CLKBUFX3 U131 ( .A(n767), .Y(n764) );
  CLKBUFX3 U132 ( .A(n766), .Y(n763) );
  CLKBUFX3 U133 ( .A(n767), .Y(n762) );
  CLKBUFX3 U134 ( .A(n767), .Y(n766) );
  CLKINVX1 U135 ( .A(n511), .Y(n644) );
  CLKINVX1 U136 ( .A(n512), .Y(n643) );
  OAI22X1 U137 ( .A0(n433), .A1(n620), .B0(n541), .B1(n576), .Y(n511) );
  CLKINVX1 U138 ( .A(n427), .Y(n635) );
  CLKINVX1 U139 ( .A(n442), .Y(n633) );
  CLKINVX1 U140 ( .A(n454), .Y(n632) );
  CLKINVX1 U141 ( .A(n478), .Y(n630) );
  NOR2X1 U142 ( .A(n423), .B(n14), .Y(n525) );
  CLKINVX1 U143 ( .A(n446), .Y(n651) );
  CLKINVX1 U144 ( .A(n466), .Y(n631) );
  CLKINVX1 U145 ( .A(n490), .Y(n629) );
  CLKINVX1 U146 ( .A(n536), .Y(n639) );
  ADDFXL U147 ( .A(N1145), .B(n416), .CI(\add_208/carry[8] ), .CO(
        \add_208/carry[9] ), .S(N1164) );
  CLKINVX1 U148 ( .A(n521), .Y(n627) );
  CLKINVX1 U149 ( .A(n502), .Y(n628) );
  CLKINVX1 U150 ( .A(n529), .Y(n657) );
  CLKINVX1 U151 ( .A(n458), .Y(n652) );
  CLKINVX1 U152 ( .A(n470), .Y(n653) );
  CLKINVX1 U153 ( .A(n482), .Y(n654) );
  CLKINVX1 U154 ( .A(n494), .Y(n655) );
  CLKINVX1 U155 ( .A(n506), .Y(n656) );
  NOR2X1 U156 ( .A(n145), .B(n14), .Y(n522) );
  CLKINVX1 U157 ( .A(n570), .Y(n649) );
  ADDFXL U158 ( .A(N1327), .B(n417), .CI(\add_223_3/carry[8] ), .CO(
        \add_223_3/carry[9] ), .S(N1346) );
  NAND2X1 U159 ( .A(n908), .B(n933), .Y(n850) );
  CLKINVX1 U160 ( .A(n547), .Y(n641) );
  CLKINVX1 U161 ( .A(n554), .Y(n647) );
  NOR2X1 U162 ( .A(\dp_cluster_1/N1325 ), .B(\sub_223_2/carry[7] ), .Y(n417)
         );
  CLKBUFX3 U163 ( .A(n419), .Y(n696) );
  CLKBUFX3 U164 ( .A(n419), .Y(n695) );
  CLKINVX1 U165 ( .A(\r1092/A[2] ), .Y(n645) );
  CLKINVX1 U166 ( .A(\r1070/A[1] ), .Y(n648) );
  CLKINVX1 U167 ( .A(\r1070/A[2] ), .Y(n650) );
  CLKINVX1 U168 ( .A(n583), .Y(n636) );
  CLKINVX1 U169 ( .A(\r1086/A[2] ), .Y(n624) );
  CLKBUFX3 U170 ( .A(n419), .Y(n697) );
  AND2X2 U171 ( .A(n1291), .B(n140), .Y(n418) );
  NAND2X1 U172 ( .A(n873), .B(n893), .Y(n843) );
  CLKINVX1 U173 ( .A(\r1084/A[2] ), .Y(n646) );
  AND3X2 U174 ( .A(n867), .B(n665), .C(n662), .Y(n877) );
  CLKINVX1 U175 ( .A(n599), .Y(n640) );
  CLKINVX1 U176 ( .A(n705), .Y(n767) );
  CLKINVX1 U177 ( .A(n525), .Y(n642) );
  XNOR2X1 U178 ( .A(n150), .B(rc[3]), .Y(n536) );
  XOR3X1 U179 ( .A(N1328), .B(n417), .C(\add_223_3/carry[9] ), .Y(N1347) );
  XOR3X1 U180 ( .A(N1146), .B(n416), .C(\add_208/carry[9] ), .Y(N1165) );
  CLKINVX1 U181 ( .A(n608), .Y(n637) );
  OAI32X1 U182 ( .A0(n576), .A1(rc[3]), .A2(n140), .B0(n433), .B1(n599), .Y(
        n512) );
  NOR2X1 U183 ( .A(n423), .B(rc[5]), .Y(n524) );
  NAND2X1 U184 ( .A(rc[5]), .B(rc[2]), .Y(n610) );
  CLKBUFX3 U185 ( .A(\r1072/A[0] ), .Y(n664) );
  CLKINVX1 U186 ( .A(\r1086/A[1] ), .Y(n625) );
  CLKINVX1 U187 ( .A(n541), .Y(n626) );
  OR3X2 U188 ( .A(n139), .B(rc[0]), .C(n140), .Y(n419) );
  NAND2X1 U189 ( .A(rc[2]), .B(n14), .Y(n609) );
  NAND2X1 U190 ( .A(rc[5]), .B(n140), .Y(n611) );
  CLKINVX1 U191 ( .A(N1143), .Y(N1156) );
  CLKINVX1 U192 ( .A(n785), .Y(n788) );
  NOR3X1 U193 ( .A(rc[1]), .B(rc[2]), .C(rc[0]), .Y(n865) );
  AND2X2 U194 ( .A(rc[2]), .B(n1291), .Y(n420) );
  ADDHXL U195 ( .A(rc[1]), .B(rc[0]), .CO(\r1053/carry[2] ), .S(N1583) );
  ADDHXL U196 ( .A(rc[2]), .B(\r1053/carry[2] ), .CO(\r1053/carry[3] ), .S(
        N1584) );
  ADDHXL U197 ( .A(rc[3]), .B(\r1053/carry[3] ), .CO(\r1053/carry[4] ), .S(
        N1585) );
  ADDHXL U198 ( .A(rc[4]), .B(\r1053/carry[4] ), .CO(\r1053/carry[5] ), .S(
        N1586) );
  CLKBUFX3 U199 ( .A(RST), .Y(n705) );
  NAND2X1 U200 ( .A(rc[4]), .B(n14), .Y(n576) );
  NAND2X1 U201 ( .A(n140), .B(n14), .Y(n614) );
  NAND2X1 U202 ( .A(n610), .B(n614), .Y(n433) );
  NAND2X1 U203 ( .A(n433), .B(n145), .Y(n423) );
  OAI32X1 U204 ( .A0(n576), .A1(n140), .A2(n1), .B0(rc[3]), .B1(n642), .Y(n520) );
  OA22X1 U205 ( .A0(n664), .A1(n139), .B0(n664), .B1(n658), .Y(n428) );
  OAI22XL U206 ( .A0(n13), .A1(n139), .B0(n13), .B1(n659), .Y(n430) );
  NAND2X1 U207 ( .A(n524), .B(n1), .Y(n515) );
  NAND2X1 U208 ( .A(n1), .B(n145), .Y(n620) );
  NAND2X1 U209 ( .A(rc[3]), .B(n140), .Y(n541) );
  NAND2X1 U210 ( .A(rc[3]), .B(n145), .Y(n599) );
  OAI22XL U211 ( .A0(n139), .A1(n644), .B0(n659), .B1(n643), .Y(n510) );
  OAI21XL U212 ( .A0(n522), .A1(n510), .B0(n13), .Y(n422) );
  AOI33X1 U213 ( .A0(n512), .A1(n660), .A2(n664), .B0(n511), .B1(n661), .B2(
        \r1078/A[0] ), .Y(n421) );
  OAI211X1 U214 ( .A0(n430), .A1(n515), .B0(n422), .C0(n421), .Y(n426) );
  OAI22XL U215 ( .A0(\r1078/A[0] ), .A1(n139), .B0(n13), .B1(n659), .Y(n427)
         );
  OAI32X1 U216 ( .A0(n145), .A1(rc[3]), .A2(rc[2]), .B0(n1), .B1(n423), .Y(
        n424) );
  NAND2X1 U217 ( .A(n424), .B(n14), .Y(n517) );
  OAI22XL U218 ( .A0(n664), .A1(n139), .B0(n664), .B1(n659), .Y(n432) );
  NAND2X1 U219 ( .A(n525), .B(rc[3]), .Y(n516) );
  OAI22XL U220 ( .A0(n427), .A1(n517), .B0(n432), .B1(n516), .Y(n425) );
  AOI211X1 U221 ( .A0(n520), .A1(n428), .B0(n426), .C0(n425), .Y(n437) );
  NOR2X1 U222 ( .A(n576), .B(n639), .Y(n431) );
  NAND2X1 U223 ( .A(n431), .B(rc[2]), .Y(n528) );
  AOI222XL U224 ( .A0(n525), .A1(n635), .B0(n524), .B1(n428), .C0(n13), .C1(
        n522), .Y(n429) );
  OA22X1 U225 ( .A0(n528), .A1(n430), .B0(n639), .B1(n429), .Y(n436) );
  NOR2BX1 U226 ( .AN(n431), .B(rc[2]), .Y(n532) );
  NOR3X1 U227 ( .A(n433), .B(rc[4]), .C(n639), .Y(n434) );
  NOR2BX1 U228 ( .AN(n434), .B(n660), .Y(n531) );
  NOR2BX1 U229 ( .AN(n434), .B(n661), .Y(n530) );
  AOI222XL U230 ( .A0(n532), .A1(n634), .B0(n664), .B1(n531), .C0(n13), .C1(
        n530), .Y(n435) );
  OAI211X1 U231 ( .A0(n536), .A1(n437), .B0(n436), .C0(n435), .Y(N1143) );
  OA22X1 U232 ( .A0(px[1]), .A1(n139), .B0(n141), .B1(n658), .Y(n443) );
  OAI22XL U233 ( .A0(\r1074/A[1] ), .A1(n139), .B0(\r1068/A[1] ), .B1(n659), 
        .Y(n445) );
  OAI21XL U234 ( .A0(n522), .A1(n510), .B0(\dp_cluster_1/N1319 ), .Y(n439) );
  AOI33X1 U235 ( .A0(n512), .A1(n660), .A2(n141), .B0(n511), .B1(n661), .B2(
        \r1078/A[1] ), .Y(n438) );
  OAI211X1 U236 ( .A0(n445), .A1(n515), .B0(n439), .C0(n438), .Y(n441) );
  OAI22XL U237 ( .A0(\r1078/A[1] ), .A1(n139), .B0(\r1074/A[1] ), .B1(n659), 
        .Y(n442) );
  OAI22XL U238 ( .A0(n141), .A1(n139), .B0(px[1]), .B1(n659), .Y(n446) );
  OAI22XL U239 ( .A0(n442), .A1(n517), .B0(n446), .B1(n516), .Y(n440) );
  AOI211X1 U240 ( .A0(n520), .A1(n443), .B0(n441), .C0(n440), .Y(n449) );
  AOI222XL U241 ( .A0(n525), .A1(n633), .B0(n524), .B1(n443), .C0(
        \dp_cluster_1/N1319 ), .C1(n522), .Y(n444) );
  OA22X1 U242 ( .A0(n528), .A1(n445), .B0(n639), .B1(n444), .Y(n448) );
  AOI222XL U243 ( .A0(n532), .A1(n651), .B0(n141), .B1(n531), .C0(\r1068/A[1] ), .C1(n530), .Y(n447) );
  OAI211X1 U244 ( .A0(n536), .A1(n449), .B0(n448), .C0(n447), .Y(N1142) );
  OA22X1 U245 ( .A0(px[2]), .A1(n139), .B0(\r1072/A[2] ), .B1(n658), .Y(n455)
         );
  OAI22XL U246 ( .A0(\r1074/A[2] ), .A1(n139), .B0(\r1068/A[2] ), .B1(n659), 
        .Y(n457) );
  OAI21XL U247 ( .A0(n522), .A1(n510), .B0(\dp_cluster_1/N1320 ), .Y(n451) );
  AOI33X1 U248 ( .A0(n512), .A1(n660), .A2(\r1072/A[2] ), .B0(n511), .B1(n661), 
        .B2(\r1078/A[2] ), .Y(n450) );
  OAI211X1 U249 ( .A0(n457), .A1(n515), .B0(n451), .C0(n450), .Y(n453) );
  OAI22XL U250 ( .A0(\r1078/A[2] ), .A1(n139), .B0(\r1074/A[2] ), .B1(n659), 
        .Y(n454) );
  OAI22XL U251 ( .A0(\r1080/A[2] ), .A1(n139), .B0(px[2]), .B1(n659), .Y(n458)
         );
  OAI22XL U252 ( .A0(n454), .A1(n517), .B0(n458), .B1(n516), .Y(n452) );
  AOI211X1 U253 ( .A0(n520), .A1(n455), .B0(n453), .C0(n452), .Y(n461) );
  AOI222XL U254 ( .A0(n525), .A1(n632), .B0(n524), .B1(n455), .C0(
        \dp_cluster_1/N1320 ), .C1(n522), .Y(n456) );
  OA22X1 U255 ( .A0(n528), .A1(n457), .B0(n639), .B1(n456), .Y(n460) );
  AOI222XL U256 ( .A0(n532), .A1(n652), .B0(\r1080/A[2] ), .B1(n531), .C0(
        \r1068/A[2] ), .C1(n530), .Y(n459) );
  OAI211X1 U257 ( .A0(n536), .A1(n461), .B0(n460), .C0(n459), .Y(N1141) );
  OA22X1 U258 ( .A0(px[3]), .A1(n139), .B0(\r1072/A[3] ), .B1(n658), .Y(n467)
         );
  OAI22XL U259 ( .A0(\r1074/A[3] ), .A1(n139), .B0(\r1068/A[3] ), .B1(n659), 
        .Y(n469) );
  OAI21XL U260 ( .A0(n522), .A1(n510), .B0(\dp_cluster_1/N1321 ), .Y(n463) );
  AOI33X1 U261 ( .A0(n512), .A1(n660), .A2(\r1072/A[3] ), .B0(n511), .B1(n661), 
        .B2(\r1078/A[3] ), .Y(n462) );
  OAI211X1 U262 ( .A0(n469), .A1(n515), .B0(n463), .C0(n462), .Y(n465) );
  OAI22XL U263 ( .A0(\r1078/A[3] ), .A1(n139), .B0(\r1074/A[3] ), .B1(n659), 
        .Y(n466) );
  OAI22XL U264 ( .A0(\r1080/A[3] ), .A1(n139), .B0(px[3]), .B1(n659), .Y(n470)
         );
  OAI22XL U265 ( .A0(n466), .A1(n517), .B0(n470), .B1(n516), .Y(n464) );
  AOI211X1 U266 ( .A0(n520), .A1(n467), .B0(n465), .C0(n464), .Y(n473) );
  AOI222XL U267 ( .A0(n525), .A1(n631), .B0(n524), .B1(n467), .C0(
        \dp_cluster_1/N1321 ), .C1(n522), .Y(n468) );
  OA22X1 U268 ( .A0(n528), .A1(n469), .B0(n639), .B1(n468), .Y(n472) );
  AOI222XL U269 ( .A0(n532), .A1(n653), .B0(\r1080/A[3] ), .B1(n531), .C0(
        \r1068/A[3] ), .C1(n530), .Y(n471) );
  OAI211X1 U270 ( .A0(n536), .A1(n473), .B0(n472), .C0(n471), .Y(N1140) );
  OA22X1 U271 ( .A0(px[4]), .A1(n139), .B0(\r1072/A[4] ), .B1(n658), .Y(n479)
         );
  OAI22XL U272 ( .A0(\r1074/A[4] ), .A1(n139), .B0(\r1068/A[4] ), .B1(n659), 
        .Y(n481) );
  OAI21XL U273 ( .A0(n522), .A1(n510), .B0(\dp_cluster_1/N1322 ), .Y(n475) );
  AOI33X1 U274 ( .A0(n512), .A1(n660), .A2(\r1072/A[4] ), .B0(n511), .B1(n661), 
        .B2(\r1078/A[4] ), .Y(n474) );
  OAI211X1 U275 ( .A0(n481), .A1(n515), .B0(n475), .C0(n474), .Y(n477) );
  OAI22XL U276 ( .A0(\r1078/A[4] ), .A1(n139), .B0(\r1074/A[4] ), .B1(n659), 
        .Y(n478) );
  OAI22XL U277 ( .A0(\r1080/A[4] ), .A1(n139), .B0(px[4]), .B1(n659), .Y(n482)
         );
  OAI22XL U278 ( .A0(n478), .A1(n517), .B0(n482), .B1(n516), .Y(n476) );
  AOI211X1 U279 ( .A0(n520), .A1(n479), .B0(n477), .C0(n476), .Y(n485) );
  AOI222XL U280 ( .A0(n525), .A1(n630), .B0(n524), .B1(n479), .C0(
        \dp_cluster_1/N1322 ), .C1(n522), .Y(n480) );
  OA22X1 U281 ( .A0(n528), .A1(n481), .B0(n639), .B1(n480), .Y(n484) );
  AOI222XL U282 ( .A0(n532), .A1(n654), .B0(\r1080/A[4] ), .B1(n531), .C0(
        \r1068/A[4] ), .C1(n530), .Y(n483) );
  OAI211X1 U283 ( .A0(n536), .A1(n485), .B0(n484), .C0(n483), .Y(N1139) );
  OA22X1 U284 ( .A0(px[5]), .A1(n139), .B0(\r1072/A[5] ), .B1(n658), .Y(n491)
         );
  OAI22XL U285 ( .A0(\r1074/A[5] ), .A1(n661), .B0(\r1068/A[5] ), .B1(n659), 
        .Y(n493) );
  OAI21XL U286 ( .A0(n522), .A1(n510), .B0(\dp_cluster_1/N1323 ), .Y(n487) );
  AOI33X1 U287 ( .A0(n512), .A1(n660), .A2(\r1072/A[5] ), .B0(n511), .B1(n661), 
        .B2(\r1078/A[5] ), .Y(n486) );
  OAI211X1 U288 ( .A0(n493), .A1(n515), .B0(n487), .C0(n486), .Y(n489) );
  OAI22XL U289 ( .A0(\r1078/A[5] ), .A1(n139), .B0(\r1074/A[5] ), .B1(n658), 
        .Y(n490) );
  OAI22XL U290 ( .A0(\r1080/A[5] ), .A1(n139), .B0(px[5]), .B1(n658), .Y(n494)
         );
  OAI22XL U291 ( .A0(n490), .A1(n517), .B0(n494), .B1(n516), .Y(n488) );
  AOI211X1 U292 ( .A0(n520), .A1(n491), .B0(n489), .C0(n488), .Y(n497) );
  AOI222XL U293 ( .A0(n525), .A1(n629), .B0(n524), .B1(n491), .C0(
        \dp_cluster_1/N1323 ), .C1(n522), .Y(n492) );
  OA22X1 U294 ( .A0(n528), .A1(n493), .B0(n639), .B1(n492), .Y(n496) );
  AOI222XL U295 ( .A0(n532), .A1(n655), .B0(\r1080/A[5] ), .B1(n531), .C0(
        \r1068/A[5] ), .C1(n530), .Y(n495) );
  OAI211X1 U296 ( .A0(n536), .A1(n497), .B0(n496), .C0(n495), .Y(N1138) );
  OA22X1 U297 ( .A0(px[6]), .A1(n139), .B0(\r1072/A[6] ), .B1(n658), .Y(n503)
         );
  OAI22XL U298 ( .A0(\r1074/A[6] ), .A1(n139), .B0(\r1068/A[6] ), .B1(n658), 
        .Y(n505) );
  OAI21XL U299 ( .A0(n522), .A1(n510), .B0(\dp_cluster_1/N1324 ), .Y(n499) );
  AOI33X1 U300 ( .A0(n512), .A1(n660), .A2(\r1072/A[6] ), .B0(n511), .B1(n661), 
        .B2(\r1078/A[6] ), .Y(n498) );
  OAI211X1 U301 ( .A0(n505), .A1(n515), .B0(n499), .C0(n498), .Y(n501) );
  OAI22XL U302 ( .A0(\r1078/A[6] ), .A1(n139), .B0(\r1074/A[6] ), .B1(n658), 
        .Y(n502) );
  OAI22XL U303 ( .A0(\r1080/A[6] ), .A1(n661), .B0(px[6]), .B1(n658), .Y(n506)
         );
  OAI22XL U304 ( .A0(n502), .A1(n517), .B0(n506), .B1(n516), .Y(n500) );
  AOI211X1 U305 ( .A0(n520), .A1(n503), .B0(n501), .C0(n500), .Y(n509) );
  AOI222XL U306 ( .A0(n525), .A1(n628), .B0(n524), .B1(n503), .C0(
        \dp_cluster_1/N1324 ), .C1(n522), .Y(n504) );
  OA22X1 U307 ( .A0(n528), .A1(n505), .B0(n639), .B1(n504), .Y(n508) );
  AOI222XL U308 ( .A0(n532), .A1(n656), .B0(\r1080/A[6] ), .B1(n531), .C0(
        \r1068/A[6] ), .C1(n530), .Y(n507) );
  OAI211X1 U309 ( .A0(n536), .A1(n509), .B0(n508), .C0(n507), .Y(N1137) );
  OA22X1 U310 ( .A0(px[7]), .A1(n139), .B0(\r1072/A[7] ), .B1(n658), .Y(n523)
         );
  OAI22XL U311 ( .A0(\r1074/A[7] ), .A1(n139), .B0(\r1068/A[7] ), .B1(n658), 
        .Y(n527) );
  OAI21XL U312 ( .A0(n522), .A1(n510), .B0(\dp_cluster_1/N1325 ), .Y(n514) );
  AOI33X1 U313 ( .A0(n512), .A1(n660), .A2(\r1072/A[7] ), .B0(n511), .B1(n661), 
        .B2(\r1078/A[7] ), .Y(n513) );
  OAI211X1 U314 ( .A0(n527), .A1(n515), .B0(n514), .C0(n513), .Y(n519) );
  OAI22XL U315 ( .A0(\r1078/A[7] ), .A1(n661), .B0(\r1074/A[7] ), .B1(n658), 
        .Y(n521) );
  OAI22XL U316 ( .A0(\r1080/A[7] ), .A1(n139), .B0(px[7]), .B1(n658), .Y(n529)
         );
  OAI22XL U317 ( .A0(n521), .A1(n517), .B0(n529), .B1(n516), .Y(n518) );
  AOI211X1 U318 ( .A0(n520), .A1(n523), .B0(n519), .C0(n518), .Y(n535) );
  AOI222XL U319 ( .A0(n525), .A1(n627), .B0(n524), .B1(n523), .C0(
        \dp_cluster_1/N1325 ), .C1(n522), .Y(n526) );
  OA22X1 U320 ( .A0(n528), .A1(n527), .B0(n639), .B1(n526), .Y(n534) );
  AOI222XL U321 ( .A0(n532), .A1(n657), .B0(\r1080/A[7] ), .B1(n531), .C0(
        \r1068/A[7] ), .C1(n530), .Y(n533) );
  OAI211X1 U322 ( .A0(n536), .A1(n535), .B0(n534), .C0(n533), .Y(N1136) );
  NAND2X1 U323 ( .A(n150), .B(n139), .Y(n580) );
  XOR2X1 U324 ( .A(rc[2]), .B(rc[3]), .Y(n538) );
  OAI21XL U325 ( .A0(n638), .A1(n538), .B0(n580), .Y(n537) );
  OAI21XL U326 ( .A0(n580), .A1(n541), .B0(n537), .Y(n560) );
  NOR2BX1 U327 ( .AN(n537), .B(rc[3]), .Y(n559) );
  OAI22XL U328 ( .A0(n638), .A1(n538), .B0(n580), .B1(n140), .Y(n539) );
  NOR2BX1 U329 ( .AN(n539), .B(n1), .Y(n558) );
  AOI222XL U330 ( .A0(\r1084/A[0] ), .A1(n560), .B0(n17), .B1(n559), .C0(
        \r1090/A[0] ), .C1(n558), .Y(n550) );
  NOR2X1 U331 ( .A(n599), .B(n659), .Y(n546) );
  AO21X1 U332 ( .A0(rc[2]), .A1(n546), .B0(rc[4]), .Y(n540) );
  NOR2BX1 U333 ( .AN(n540), .B(n14), .Y(n569) );
  NAND2X1 U334 ( .A(n660), .B(n145), .Y(n567) );
  NOR2X1 U335 ( .A(n1), .B(n14), .Y(n566) );
  NAND2BX1 U336 ( .AN(n614), .B(rc[0]), .Y(n606) );
  NAND2X1 U337 ( .A(rc[5]), .B(rc[0]), .Y(n561) );
  OAI222XL U338 ( .A0(\r1090/A[0] ), .A1(n611), .B0(\r1084/A[0] ), .B1(n610), 
        .C0(n17), .C1(rc[5]), .Y(n547) );
  OAI222XL U339 ( .A0(n606), .A1(\r1084/A[0] ), .B0(n561), .B1(n17), .C0(rc[0]), .C1(n547), .Y(n544) );
  NOR3X1 U340 ( .A(n140), .B(rc[3]), .C(n150), .Y(n542) );
  OAI21XL U341 ( .A0(n542), .A1(n626), .B0(n14), .Y(n563) );
  NAND2BX1 U342 ( .AN(n609), .B(rc[3]), .Y(n562) );
  OAI22XL U343 ( .A0(n563), .A1(n17), .B0(n562), .B1(\r1084/A[0] ), .Y(n543)
         );
  AOI221XL U344 ( .A0(n17), .A1(n566), .B0(n544), .B1(n1), .C0(n543), .Y(n545)
         );
  AOI2BB2X1 U345 ( .B0(n17), .B1(n569), .A0N(n567), .A1N(n545), .Y(n549) );
  NOR2BX1 U346 ( .AN(n546), .B(rc[5]), .Y(n573) );
  NOR2BX1 U347 ( .AN(n546), .B(n611), .Y(n572) );
  NOR2X1 U348 ( .A(n620), .B(n659), .Y(n571) );
  AOI222XL U349 ( .A0(\r1084/A[0] ), .A1(n573), .B0(\r1084/A[0] ), .B1(n572), 
        .C0(n571), .C1(n641), .Y(n548) );
  OAI211X1 U350 ( .A0(n576), .A1(n550), .B0(n549), .C0(n548), .Y(N1086) );
  AOI222XL U351 ( .A0(py[1]), .A1(n560), .B0(\r1086/A[1] ), .B1(n559), .C0(
        \r1090/A[1] ), .C1(n558), .Y(n557) );
  OAI222XL U352 ( .A0(\r1090/A[1] ), .A1(n611), .B0(n149), .B1(n610), .C0(
        \r1070/A[1] ), .C1(rc[5]), .Y(n554) );
  OAI222XL U353 ( .A0(n606), .A1(n648), .B0(n561), .B1(py[1]), .C0(rc[0]), 
        .C1(n554), .Y(n552) );
  OAI22XL U354 ( .A0(n563), .A1(py[1]), .B0(n562), .B1(n625), .Y(n551) );
  AOI221XL U355 ( .A0(\r1094/A[1] ), .A1(n566), .B0(n552), .B1(n1), .C0(n551), 
        .Y(n553) );
  AOI2BB2X1 U356 ( .B0(\r1094/A[1] ), .B1(n569), .A0N(n567), .A1N(n553), .Y(
        n556) );
  AOI222XL U357 ( .A0(n149), .A1(n573), .B0(n149), .B1(n572), .C0(n571), .C1(
        n647), .Y(n555) );
  OAI211X1 U358 ( .A0(n576), .A1(n557), .B0(n556), .C0(n555), .Y(N1085) );
  AOI222XL U359 ( .A0(py[2]), .A1(n560), .B0(n559), .B1(\r1086/A[2] ), .C0(
        \r1090/A[2] ), .C1(n558), .Y(n577) );
  OAI222XL U360 ( .A0(\r1090/A[2] ), .A1(n611), .B0(\r1092/A[2] ), .B1(n610), 
        .C0(\r1070/A[2] ), .C1(rc[5]), .Y(n570) );
  OAI222XL U361 ( .A0(n606), .A1(n650), .B0(n561), .B1(n645), .C0(rc[0]), .C1(
        n570), .Y(n565) );
  OAI22XL U362 ( .A0(n563), .A1(n646), .B0(n562), .B1(n624), .Y(n564) );
  AOI221XL U363 ( .A0(\r1094/A[2] ), .A1(n566), .B0(n565), .B1(n1), .C0(n564), 
        .Y(n568) );
  AOI2BB2X1 U364 ( .B0(n569), .B1(\r1094/A[2] ), .A0N(n568), .A1N(n567), .Y(
        n575) );
  AOI222XL U365 ( .A0(n573), .A1(\r1084/A[2] ), .B0(n572), .B1(\r1092/A[2] ), 
        .C0(n571), .C1(n649), .Y(n574) );
  OAI211X1 U366 ( .A0(n577), .A1(n576), .B0(n575), .C0(n574), .Y(N1084) );
  NAND2X1 U367 ( .A(n660), .B(n150), .Y(n608) );
  OAI32X1 U368 ( .A0(n150), .A1(N2409), .A2(n661), .B0(N2404), .B1(n608), .Y(
        n579) );
  NAND2X1 U369 ( .A(rc[0]), .B(n661), .Y(n583) );
  OAI22XL U370 ( .A0(N2394), .A1(n580), .B0(N2399), .B1(n583), .Y(n578) );
  OAI21XL U371 ( .A0(n579), .A1(n578), .B0(n140), .Y(n594) );
  OAI32X1 U372 ( .A0(n150), .A1(N2429), .A2(n661), .B0(N2424), .B1(n608), .Y(
        n582) );
  OAI22XL U373 ( .A0(N2414), .A1(n580), .B0(N2419), .B1(n583), .Y(n581) );
  OAI21XL U374 ( .A0(n582), .A1(n581), .B0(rc[2]), .Y(n593) );
  OAI22XL U375 ( .A0(N2519), .A1(n14), .B0(N2379), .B1(n609), .Y(n591) );
  OAI22XL U376 ( .A0(N2384), .A1(n609), .B0(N2364), .B1(n614), .Y(n586) );
  OAI22XL U377 ( .A0(N2524), .A1(n14), .B0(N2369), .B1(n606), .Y(n585) );
  NOR3X1 U378 ( .A(n609), .B(N2389), .C(n150), .Y(n584) );
  AOI211X1 U379 ( .A0(n586), .A1(n150), .B0(n585), .C0(n584), .Y(n588) );
  OAI222XL U380 ( .A0(N2374), .A1(n609), .B0(N2354), .B1(n614), .C0(N2514), 
        .C1(n14), .Y(n587) );
  OAI2BB2XL U381 ( .B0(n139), .B1(n588), .A0N(n587), .A1N(n638), .Y(n590) );
  OAI31XL U382 ( .A0(n606), .A1(N2359), .A2(n659), .B0(n1), .Y(n589) );
  AOI211X1 U383 ( .A0(n591), .A1(n636), .B0(n590), .C0(n589), .Y(n592) );
  AOI31X1 U384 ( .A0(n594), .A1(rc[3]), .A2(n593), .B0(n592), .Y(n623) );
  OA22X1 U385 ( .A0(N2324), .A1(n614), .B0(N2504), .B1(n610), .Y(n595) );
  OAI221XL U386 ( .A0(N2484), .A1(n611), .B0(N2344), .B1(n609), .C0(n595), .Y(
        n598) );
  OAI222XL U387 ( .A0(N2489), .A1(n611), .B0(N2509), .B1(n610), .C0(N2349), 
        .C1(n609), .Y(n597) );
  NOR2X1 U388 ( .A(N2329), .B(n606), .Y(n596) );
  AOI221XL U389 ( .A0(n598), .A1(n150), .B0(n597), .B1(rc[0]), .C0(n596), .Y(
        n605) );
  OA22X1 U390 ( .A0(N2314), .A1(n614), .B0(N2494), .B1(n610), .Y(n600) );
  OAI221XL U391 ( .A0(N2474), .A1(n611), .B0(N2334), .B1(n609), .C0(n600), .Y(
        n603) );
  OAI222XL U392 ( .A0(N2479), .A1(n611), .B0(N2499), .B1(n610), .C0(N2339), 
        .C1(n609), .Y(n602) );
  NOR3X1 U393 ( .A(n606), .B(N2319), .C(n660), .Y(n601) );
  AOI221XL U394 ( .A0(n603), .A1(n638), .B0(n636), .B1(n602), .C0(n601), .Y(
        n604) );
  OAI211X1 U395 ( .A0(n661), .A1(n605), .B0(n640), .C0(n604), .Y(n622) );
  OAI222XL U396 ( .A0(N2434), .A1(n611), .B0(N2454), .B1(n610), .C0(N2294), 
        .C1(n609), .Y(n607) );
  AOI2BB2X1 U397 ( .B0(n607), .B1(n638), .A0N(N2289), .A1N(n606), .Y(n619) );
  OAI222XL U398 ( .A0(N2444), .A1(n611), .B0(N2464), .B1(n610), .C0(N2304), 
        .C1(n609), .Y(n617) );
  OAI222XL U399 ( .A0(N2449), .A1(n611), .B0(N2469), .B1(n610), .C0(N2309), 
        .C1(n609), .Y(n613) );
  OAI222XL U400 ( .A0(N2439), .A1(n611), .B0(N2459), .B1(n610), .C0(N2299), 
        .C1(n609), .Y(n612) );
  AO22X1 U401 ( .A0(n613), .A1(n658), .B0(n612), .B1(n139), .Y(n616) );
  NOR3X1 U402 ( .A(n614), .B(N2284), .C(rc[0]), .Y(n615) );
  AOI221XL U403 ( .A0(n637), .A1(n617), .B0(n616), .B1(rc[0]), .C0(n615), .Y(
        n618) );
  NAND3BX1 U404 ( .AN(n620), .B(n619), .C(n618), .Y(n621) );
  OAI211X1 U405 ( .A0(n623), .A1(n145), .B0(n622), .C0(n621), .Y(N1916) );
  NOR2X1 U406 ( .A(n795), .B(n905), .Y(n662) );
  NOR2X1 U407 ( .A(n795), .B(n905), .Y(n663) );
  XOR2X1 U408 ( .A(py[7]), .B(\r1066/carry[7] ), .Y(\r1092/A[7] ) );
  AND2X1 U409 ( .A(py[6]), .B(\r1066/carry[6] ), .Y(\r1066/carry[7] ) );
  XOR2X1 U410 ( .A(py[6]), .B(\r1066/carry[6] ), .Y(\r1092/A[6] ) );
  AND2X1 U411 ( .A(py[5]), .B(\r1066/carry[5] ), .Y(\r1066/carry[6] ) );
  XOR2X1 U412 ( .A(py[5]), .B(\r1066/carry[5] ), .Y(\r1092/A[5] ) );
  AND2X1 U413 ( .A(py[4]), .B(\r1066/carry[4] ), .Y(\r1066/carry[5] ) );
  XOR2X1 U414 ( .A(py[4]), .B(\r1066/carry[4] ), .Y(\r1092/A[4] ) );
  AND2X1 U415 ( .A(py[3]), .B(\r1066/carry[3] ), .Y(\r1066/carry[4] ) );
  XOR2X1 U416 ( .A(py[3]), .B(\r1066/carry[3] ), .Y(\r1092/A[3] ) );
  XNOR2X1 U417 ( .A(py[7]), .B(\r1063/carry[7] ), .Y(\r1070/A[7] ) );
  OR2X1 U418 ( .A(py[6]), .B(\r1063/carry[6] ), .Y(\r1063/carry[7] ) );
  XNOR2X1 U419 ( .A(\r1063/carry[6] ), .B(py[6]), .Y(\r1070/A[6] ) );
  OR2X1 U420 ( .A(py[5]), .B(\r1063/carry[5] ), .Y(\r1063/carry[6] ) );
  XNOR2X1 U421 ( .A(\r1063/carry[5] ), .B(py[5]), .Y(\r1070/A[5] ) );
  OR2X1 U422 ( .A(py[4]), .B(\r1063/carry[4] ), .Y(\r1063/carry[5] ) );
  XNOR2X1 U423 ( .A(\r1063/carry[4] ), .B(py[4]), .Y(\r1070/A[4] ) );
  OR2X1 U424 ( .A(py[3]), .B(\r1063/carry[3] ), .Y(\r1063/carry[4] ) );
  XNOR2X1 U425 ( .A(\r1063/carry[3] ), .B(py[3]), .Y(\r1070/A[3] ) );
  XNOR2X1 U426 ( .A(py[7]), .B(\r1064/carry[7] ), .Y(\r1084/A[7] ) );
  OR2X1 U427 ( .A(py[6]), .B(\r1064/carry[6] ), .Y(\r1064/carry[7] ) );
  XNOR2X1 U428 ( .A(\r1064/carry[6] ), .B(py[6]), .Y(\r1084/A[6] ) );
  OR2X1 U429 ( .A(py[5]), .B(\r1064/carry[5] ), .Y(\r1064/carry[6] ) );
  XNOR2X1 U430 ( .A(\r1064/carry[5] ), .B(py[5]), .Y(\r1084/A[5] ) );
  OR2X1 U431 ( .A(py[4]), .B(\r1064/carry[4] ), .Y(\r1064/carry[5] ) );
  XNOR2X1 U432 ( .A(\r1064/carry[4] ), .B(py[4]), .Y(\r1084/A[4] ) );
  OR2X1 U433 ( .A(py[3]), .B(\r1064/carry[3] ), .Y(\r1064/carry[4] ) );
  XNOR2X1 U434 ( .A(\r1064/carry[3] ), .B(py[3]), .Y(\r1084/A[3] ) );
  XOR2X1 U435 ( .A(py[7]), .B(\r1067/carry[7] ), .Y(\r1094/A[7] ) );
  AND2X1 U436 ( .A(py[6]), .B(\r1067/carry[6] ), .Y(\r1067/carry[7] ) );
  XOR2X1 U437 ( .A(py[6]), .B(\r1067/carry[6] ), .Y(\r1094/A[6] ) );
  AND2X1 U438 ( .A(py[5]), .B(\r1067/carry[5] ), .Y(\r1067/carry[6] ) );
  XOR2X1 U439 ( .A(py[5]), .B(\r1067/carry[5] ), .Y(\r1094/A[5] ) );
  AND2X1 U440 ( .A(py[4]), .B(\r1067/carry[4] ), .Y(\r1067/carry[5] ) );
  XOR2X1 U441 ( .A(py[4]), .B(\r1067/carry[4] ), .Y(\r1094/A[4] ) );
  AND2X1 U442 ( .A(py[3]), .B(\r1067/carry[3] ), .Y(\r1067/carry[4] ) );
  XOR2X1 U443 ( .A(py[3]), .B(\r1067/carry[3] ), .Y(\r1094/A[3] ) );
  AND2X1 U444 ( .A(\add_208/A[7] ), .B(N1154), .Y(\add_208/carry[8] ) );
  XOR2X1 U445 ( .A(N1154), .B(\add_208/A[7] ), .Y(N1163) );
  XNOR2X1 U446 ( .A(\sub_208_2/carry[7] ), .B(N1136), .Y(N1154) );
  OR2X1 U447 ( .A(N1137), .B(\sub_208_2/carry[6] ), .Y(\sub_208_2/carry[7] )
         );
  XNOR2X1 U448 ( .A(\sub_208_2/carry[6] ), .B(N1137), .Y(N1162) );
  OR2X1 U449 ( .A(N1138), .B(\sub_208_2/carry[5] ), .Y(\sub_208_2/carry[6] )
         );
  XNOR2X1 U450 ( .A(\sub_208_2/carry[5] ), .B(N1138), .Y(N1161) );
  OR2X1 U451 ( .A(N1139), .B(\sub_208_2/carry[4] ), .Y(\sub_208_2/carry[5] )
         );
  XNOR2X1 U452 ( .A(\sub_208_2/carry[4] ), .B(N1139), .Y(N1160) );
  OR2X1 U453 ( .A(N1140), .B(\sub_208_2/carry[3] ), .Y(\sub_208_2/carry[4] )
         );
  XNOR2X1 U454 ( .A(\sub_208_2/carry[3] ), .B(N1140), .Y(N1159) );
  OR2X1 U455 ( .A(N1141), .B(\sub_208_2/carry[2] ), .Y(\sub_208_2/carry[3] )
         );
  XNOR2X1 U456 ( .A(\sub_208_2/carry[2] ), .B(N1141), .Y(N1158) );
  AND2X1 U457 ( .A(N1143), .B(N1142), .Y(\sub_208_2/carry[2] ) );
  XOR2X1 U458 ( .A(N1142), .B(N1143), .Y(N1157) );
  XOR2X1 U459 ( .A(px[7]), .B(\r1061/carry[7] ), .Y(\r1080/A[7] ) );
  AND2X1 U460 ( .A(px[6]), .B(\r1061/carry[6] ), .Y(\r1061/carry[7] ) );
  XOR2X1 U461 ( .A(px[6]), .B(\r1061/carry[6] ), .Y(\r1080/A[6] ) );
  AND2X1 U462 ( .A(px[5]), .B(\r1061/carry[5] ), .Y(\r1061/carry[6] ) );
  XOR2X1 U463 ( .A(px[5]), .B(\r1061/carry[5] ), .Y(\r1080/A[5] ) );
  AND2X1 U464 ( .A(px[4]), .B(\r1061/carry[4] ), .Y(\r1061/carry[5] ) );
  XOR2X1 U465 ( .A(px[4]), .B(\r1061/carry[4] ), .Y(\r1080/A[4] ) );
  AND2X1 U466 ( .A(px[3]), .B(\r1061/carry[3] ), .Y(\r1061/carry[4] ) );
  XOR2X1 U467 ( .A(px[3]), .B(\r1061/carry[3] ), .Y(\r1080/A[3] ) );
  AND2X1 U468 ( .A(px[2]), .B(px[1]), .Y(\r1061/carry[3] ) );
  XOR2X1 U469 ( .A(px[2]), .B(px[1]), .Y(\r1080/A[2] ) );
  XNOR2X1 U470 ( .A(px[7]), .B(\r1058/carry[7] ), .Y(\r1068/A[7] ) );
  OR2X1 U471 ( .A(px[6]), .B(\r1058/carry[6] ), .Y(\r1058/carry[7] ) );
  XNOR2X1 U472 ( .A(\r1058/carry[6] ), .B(px[6]), .Y(\r1068/A[6] ) );
  OR2X1 U473 ( .A(px[5]), .B(\r1058/carry[5] ), .Y(\r1058/carry[6] ) );
  XNOR2X1 U474 ( .A(\r1058/carry[5] ), .B(px[5]), .Y(\r1068/A[5] ) );
  OR2X1 U475 ( .A(px[4]), .B(\r1058/carry[4] ), .Y(\r1058/carry[5] ) );
  XNOR2X1 U476 ( .A(\r1058/carry[4] ), .B(px[4]), .Y(\r1068/A[4] ) );
  OR2X1 U477 ( .A(px[3]), .B(\r1058/carry[3] ), .Y(\r1058/carry[4] ) );
  XNOR2X1 U478 ( .A(\r1058/carry[3] ), .B(px[3]), .Y(\r1068/A[3] ) );
  OR2X1 U479 ( .A(px[2]), .B(\r1058/carry[2] ), .Y(\r1058/carry[3] ) );
  XNOR2X1 U480 ( .A(\r1058/carry[2] ), .B(px[2]), .Y(\r1068/A[2] ) );
  AND2X1 U481 ( .A(px[1]), .B(n664), .Y(\r1058/carry[2] ) );
  XOR2X1 U482 ( .A(px[1]), .B(n664), .Y(\r1068/A[1] ) );
  XNOR2X1 U483 ( .A(px[7]), .B(\r1059/carry[7] ), .Y(\r1072/A[7] ) );
  OR2X1 U484 ( .A(px[6]), .B(\r1059/carry[6] ), .Y(\r1059/carry[7] ) );
  XNOR2X1 U485 ( .A(\r1059/carry[6] ), .B(px[6]), .Y(\r1072/A[6] ) );
  OR2X1 U486 ( .A(px[5]), .B(\r1059/carry[5] ), .Y(\r1059/carry[6] ) );
  XNOR2X1 U487 ( .A(\r1059/carry[5] ), .B(px[5]), .Y(\r1072/A[5] ) );
  OR2X1 U488 ( .A(px[4]), .B(\r1059/carry[4] ), .Y(\r1059/carry[5] ) );
  XNOR2X1 U489 ( .A(\r1059/carry[4] ), .B(px[4]), .Y(\r1072/A[4] ) );
  OR2X1 U490 ( .A(px[3]), .B(\r1059/carry[3] ), .Y(\r1059/carry[4] ) );
  XNOR2X1 U491 ( .A(\r1059/carry[3] ), .B(px[3]), .Y(\r1072/A[3] ) );
  OR2X1 U492 ( .A(px[2]), .B(px[1]), .Y(\r1059/carry[3] ) );
  XNOR2X1 U493 ( .A(px[1]), .B(px[2]), .Y(\r1072/A[2] ) );
  AND2X1 U494 ( .A(\add_223_3/A[7] ), .B(N1336), .Y(\add_223_3/carry[8] ) );
  XOR2X1 U495 ( .A(N1336), .B(\add_223_3/A[7] ), .Y(N1345) );
  XNOR2X1 U496 ( .A(\sub_223_2/carry[7] ), .B(\dp_cluster_1/N1325 ), .Y(N1336)
         );
  OR2X1 U497 ( .A(\dp_cluster_1/N1324 ), .B(\sub_223_2/carry[6] ), .Y(
        \sub_223_2/carry[7] ) );
  XNOR2X1 U498 ( .A(\sub_223_2/carry[6] ), .B(\dp_cluster_1/N1324 ), .Y(N1344)
         );
  OR2X1 U499 ( .A(\dp_cluster_1/N1323 ), .B(\sub_223_2/carry[5] ), .Y(
        \sub_223_2/carry[6] ) );
  XNOR2X1 U500 ( .A(\sub_223_2/carry[5] ), .B(\dp_cluster_1/N1323 ), .Y(N1343)
         );
  OR2X1 U501 ( .A(\dp_cluster_1/N1322 ), .B(\sub_223_2/carry[4] ), .Y(
        \sub_223_2/carry[5] ) );
  XNOR2X1 U502 ( .A(\sub_223_2/carry[4] ), .B(\dp_cluster_1/N1322 ), .Y(N1342)
         );
  OR2X1 U503 ( .A(\dp_cluster_1/N1321 ), .B(\sub_223_2/carry[3] ), .Y(
        \sub_223_2/carry[4] ) );
  XNOR2X1 U504 ( .A(\sub_223_2/carry[3] ), .B(\dp_cluster_1/N1321 ), .Y(N1341)
         );
  OR2X1 U505 ( .A(\dp_cluster_1/N1320 ), .B(\sub_223_2/carry[2] ), .Y(
        \sub_223_2/carry[3] ) );
  XNOR2X1 U506 ( .A(\sub_223_2/carry[2] ), .B(\dp_cluster_1/N1320 ), .Y(N1340)
         );
  AND2X1 U507 ( .A(n13), .B(\dp_cluster_1/N1319 ), .Y(\sub_223_2/carry[2] ) );
  XOR2X1 U508 ( .A(\dp_cluster_1/N1319 ), .B(n13), .Y(N1339) );
  XOR2X1 U509 ( .A(px[7]), .B(\r1062/carry[7] ), .Y(\dp_cluster_1/N1325 ) );
  AND2X1 U510 ( .A(\r1062/carry[6] ), .B(px[6]), .Y(\r1062/carry[7] ) );
  XOR2X1 U511 ( .A(px[6]), .B(\r1062/carry[6] ), .Y(\dp_cluster_1/N1324 ) );
  AND2X1 U512 ( .A(\r1062/carry[5] ), .B(px[5]), .Y(\r1062/carry[6] ) );
  XOR2X1 U513 ( .A(px[5]), .B(\r1062/carry[5] ), .Y(\dp_cluster_1/N1323 ) );
  AND2X1 U514 ( .A(\r1062/carry[4] ), .B(px[4]), .Y(\r1062/carry[5] ) );
  XOR2X1 U515 ( .A(px[4]), .B(\r1062/carry[4] ), .Y(\dp_cluster_1/N1322 ) );
  AND2X1 U516 ( .A(\r1062/carry[3] ), .B(px[3]), .Y(\r1062/carry[4] ) );
  XOR2X1 U517 ( .A(px[3]), .B(\r1062/carry[3] ), .Y(\dp_cluster_1/N1321 ) );
  AND2X1 U518 ( .A(\r1062/carry[2] ), .B(px[2]), .Y(\r1062/carry[3] ) );
  XOR2X1 U519 ( .A(px[2]), .B(\r1062/carry[2] ), .Y(\dp_cluster_1/N1320 ) );
  OR2X1 U520 ( .A(px[1]), .B(n664), .Y(\r1062/carry[2] ) );
  XNOR2X1 U521 ( .A(n664), .B(px[1]), .Y(\dp_cluster_1/N1319 ) );
  AND2X1 U522 ( .A(py[2]), .B(py[1]), .Y(\r1066/carry[3] ) );
  XOR2X1 U523 ( .A(py[2]), .B(py[1]), .Y(\r1092/A[2] ) );
  OR2X1 U524 ( .A(py[2]), .B(py[1]), .Y(\r1064/carry[3] ) );
  XNOR2X1 U525 ( .A(py[1]), .B(py[2]), .Y(\r1084/A[2] ) );
  OR2X1 U526 ( .A(py[2]), .B(\r1063/carry[2] ), .Y(\r1063/carry[3] ) );
  XNOR2X1 U527 ( .A(\r1063/carry[2] ), .B(py[2]), .Y(\r1070/A[2] ) );
  AND2X1 U528 ( .A(py[1]), .B(\r1084/A[0] ), .Y(\r1063/carry[2] ) );
  XOR2X1 U529 ( .A(py[1]), .B(\r1084/A[0] ), .Y(\r1070/A[1] ) );
  AND2X1 U530 ( .A(py[2]), .B(\r1067/carry[2] ), .Y(\r1067/carry[3] ) );
  XOR2X1 U531 ( .A(py[2]), .B(\r1067/carry[2] ), .Y(\r1094/A[2] ) );
  OR2X1 U532 ( .A(py[1]), .B(\r1084/A[0] ), .Y(\r1067/carry[2] ) );
  XNOR2X1 U533 ( .A(\r1084/A[0] ), .B(py[1]), .Y(\r1094/A[1] ) );
  XOR2X1 U534 ( .A(\r1053/carry[5] ), .B(rc[5]), .Y(N1587) );
  NAND2BX1 U535 ( .AN(px[1]), .B(n13), .Y(n768) );
  OAI2BB1X1 U536 ( .A0N(n664), .A1N(px[1]), .B0(n768), .Y(\r1074/A[1] ) );
  OR2X1 U537 ( .A(n768), .B(px[2]), .Y(n769) );
  OAI2BB1X1 U538 ( .A0N(n768), .A1N(px[2]), .B0(n769), .Y(\r1074/A[2] ) );
  OR2X1 U539 ( .A(n769), .B(px[3]), .Y(n770) );
  OAI2BB1X1 U540 ( .A0N(n769), .A1N(px[3]), .B0(n770), .Y(\r1074/A[3] ) );
  NOR2X1 U541 ( .A(n770), .B(px[4]), .Y(n771) );
  AO21X1 U542 ( .A0(n770), .A1(px[4]), .B0(n771), .Y(\r1074/A[4] ) );
  NAND2X1 U543 ( .A(n771), .B(n142), .Y(n772) );
  OAI21XL U544 ( .A0(n771), .A1(n142), .B0(n772), .Y(\r1074/A[5] ) );
  XNOR2X1 U545 ( .A(px[6]), .B(n772), .Y(\r1074/A[6] ) );
  NOR2X1 U546 ( .A(px[6]), .B(n772), .Y(n773) );
  XOR2X1 U547 ( .A(px[7]), .B(n773), .Y(\r1074/A[7] ) );
  NAND2BX1 U548 ( .AN(py[1]), .B(n17), .Y(n774) );
  OAI2BB1X1 U549 ( .A0N(\r1084/A[0] ), .A1N(py[1]), .B0(n774), .Y(\r1086/A[1] ) );
  OR2X1 U550 ( .A(n774), .B(py[2]), .Y(n775) );
  OAI2BB1X1 U551 ( .A0N(n774), .A1N(py[2]), .B0(n775), .Y(\r1086/A[2] ) );
  OR2X1 U552 ( .A(n775), .B(py[3]), .Y(n776) );
  OAI2BB1X1 U553 ( .A0N(n775), .A1N(py[3]), .B0(n776), .Y(\r1086/A[3] ) );
  NOR2X1 U554 ( .A(n776), .B(py[4]), .Y(n777) );
  AO21X1 U555 ( .A0(n776), .A1(py[4]), .B0(n777), .Y(\r1086/A[4] ) );
  NAND2X1 U556 ( .A(n777), .B(n143), .Y(n778) );
  OAI21XL U557 ( .A0(n777), .A1(n143), .B0(n778), .Y(\r1086/A[5] ) );
  XNOR2X1 U558 ( .A(py[6]), .B(n778), .Y(\r1086/A[6] ) );
  NOR2X1 U559 ( .A(py[6]), .B(n778), .Y(n779) );
  XOR2X1 U560 ( .A(py[7]), .B(n779), .Y(\r1086/A[7] ) );
  NAND2X1 U561 ( .A(wc[1]), .B(wc[0]), .Y(n780) );
  NAND4BX1 U562 ( .AN(n780), .B(wc[2]), .C(wc[4]), .D(wc[3]), .Y(n782) );
  NAND4X1 U563 ( .A(wc[8]), .B(wc[7]), .C(wc[6]), .D(wc[5]), .Y(n781) );
  AOI2BB1X1 U564 ( .A0N(n782), .A1N(n781), .B0(wc[9]), .Y(N960) );
  NAND2X1 U565 ( .A(pc[11]), .B(pc[10]), .Y(n783) );
  NAND4BX1 U566 ( .AN(n783), .B(pc[12]), .C(pc[9]), .D(pc[13]), .Y(n785) );
  NAND4X1 U567 ( .A(pc[3]), .B(pc[2]), .C(pc[1]), .D(pc[0]), .Y(n786) );
  AOI31X1 U568 ( .A0(pc[5]), .A1(pc[4]), .A2(pc[6]), .B0(pc[7]), .Y(n784) );
  AOI211X1 U569 ( .A0(n148), .A1(n786), .B0(n785), .C0(n784), .Y(n787) );
  AO21X1 U570 ( .A0(pc[8]), .A1(n788), .B0(n787), .Y(N965) );
  NAND4X1 U571 ( .A(n789), .B(n790), .C(n791), .D(n792), .Y(state_next[2]) );
  NAND2X1 U572 ( .A(n793), .B(n794), .Y(n789) );
  OAI211X1 U573 ( .A0(n794), .A1(n795), .B0(n796), .C0(n797), .Y(state_next[1]) );
  AND2X1 U574 ( .A(n798), .B(n791), .Y(n797) );
  NAND4X1 U575 ( .A(n799), .B(n800), .C(n801), .D(n802), .Y(state_next[0]) );
  AOI222XL U576 ( .A0(IEN), .A1(n803), .B0(n804), .B1(n805), .C0(n806), .C1(
        n807), .Y(n802) );
  CLKINVX1 U577 ( .A(n808), .Y(n805) );
  CLKINVX1 U578 ( .A(n809), .Y(n1469) );
  AOI221XL U579 ( .A0(n810), .A1(\r1078/A[1] ), .B0(n811), .B1(px[1]), .C0(
        n830), .Y(n809) );
  CLKINVX1 U580 ( .A(n831), .Y(n1470) );
  AOI221XL U581 ( .A0(n810), .A1(\r1078/A[0] ), .B0(n811), .B1(n664), .C0(n830), .Y(n831) );
  CLKINVX1 U582 ( .A(n832), .Y(n830) );
  AO22X1 U583 ( .A0(n811), .A1(pc[0]), .B0(N1596), .B1(n833), .Y(n2296) );
  AO22X1 U584 ( .A0(n811), .A1(pc[13]), .B0(N1609), .B1(n833), .Y(n2295) );
  OAI2BB2XL U585 ( .B0(n834), .B1(n1464), .A0N(N1595), .A1N(n835), .Y(n2294)
         );
  OAI2BB2XL U586 ( .B0(n836), .B1(n14), .A0N(N1587), .A1N(n837), .Y(n2293) );
  OAI2BB2XL U587 ( .B0(n834), .B1(n1463), .A0N(N1588), .A1N(n835), .Y(n2292)
         );
  OAI2BB2XL U588 ( .B0(n834), .B1(n1462), .A0N(N1589), .A1N(n835), .Y(n2291)
         );
  OAI2BB2XL U589 ( .B0(n834), .B1(n1461), .A0N(N1590), .A1N(n835), .Y(n2290)
         );
  OAI2BB2XL U590 ( .B0(n834), .B1(n1468), .A0N(N1591), .A1N(n835), .Y(n2289)
         );
  OAI2BB2XL U591 ( .B0(n834), .B1(n1467), .A0N(N1592), .A1N(n835), .Y(n2288)
         );
  OAI2BB2XL U592 ( .B0(n834), .B1(n1466), .A0N(N1593), .A1N(n835), .Y(n2287)
         );
  OAI2BB2XL U593 ( .B0(n834), .B1(n1465), .A0N(N1594), .A1N(n835), .Y(n2286)
         );
  NAND2X1 U594 ( .A(n838), .B(n839), .Y(n835) );
  AO22X1 U595 ( .A0(n811), .A1(pc[12]), .B0(N1608), .B1(n833), .Y(n2285) );
  AO22X1 U596 ( .A0(n811), .A1(pc[11]), .B0(N1607), .B1(n833), .Y(n2284) );
  AO22X1 U597 ( .A0(n811), .A1(pc[10]), .B0(N1606), .B1(n833), .Y(n2283) );
  AO22X1 U598 ( .A0(n811), .A1(pc[9]), .B0(N1605), .B1(n833), .Y(n2282) );
  AO22X1 U599 ( .A0(n811), .A1(pc[8]), .B0(N1604), .B1(n833), .Y(n2281) );
  AO22X1 U600 ( .A0(n811), .A1(pc[7]), .B0(N1603), .B1(n833), .Y(n2280) );
  AO22X1 U601 ( .A0(n811), .A1(pc[6]), .B0(N1602), .B1(n833), .Y(n2279) );
  AO22X1 U602 ( .A0(n811), .A1(pc[5]), .B0(N1601), .B1(n833), .Y(n2278) );
  AO22X1 U603 ( .A0(n811), .A1(pc[4]), .B0(N1600), .B1(n833), .Y(n2277) );
  AO22X1 U604 ( .A0(n811), .A1(pc[3]), .B0(N1599), .B1(n833), .Y(n2276) );
  AO22X1 U605 ( .A0(n811), .A1(pc[2]), .B0(N1598), .B1(n833), .Y(n2275) );
  AO22X1 U606 ( .A0(n811), .A1(pc[1]), .B0(N1597), .B1(n833), .Y(n2274) );
  NAND2X1 U607 ( .A(n806), .B(n840), .Y(n832) );
  AO22X1 U608 ( .A0(n841), .A1(wc[9]), .B0(N1558), .B1(n842), .Y(n2273) );
  AO22X1 U609 ( .A0(n841), .A1(wc[8]), .B0(N1557), .B1(n842), .Y(n2272) );
  AO22X1 U610 ( .A0(n841), .A1(wc[7]), .B0(N1556), .B1(n842), .Y(n2271) );
  AO22X1 U611 ( .A0(n841), .A1(wc[6]), .B0(N1555), .B1(n842), .Y(n2270) );
  AO22X1 U612 ( .A0(n841), .A1(wc[5]), .B0(N1554), .B1(n842), .Y(n2269) );
  AO22X1 U613 ( .A0(n841), .A1(wc[4]), .B0(N1553), .B1(n842), .Y(n2268) );
  AO22X1 U614 ( .A0(n841), .A1(wc[3]), .B0(N1552), .B1(n842), .Y(n2267) );
  AO22X1 U615 ( .A0(n841), .A1(wc[2]), .B0(N1551), .B1(n842), .Y(n2266) );
  AO22X1 U616 ( .A0(n841), .A1(wc[1]), .B0(N1550), .B1(n842), .Y(n2265) );
  AO22X1 U617 ( .A0(n841), .A1(wc[0]), .B0(N1549), .B1(n842), .Y(n2264) );
  OAI221XL U618 ( .A0(n795), .A1(n845), .B0(n794), .B1(n846), .C0(n847), .Y(
        n841) );
  NOR2BX1 U619 ( .AN(n796), .B(n843), .Y(n847) );
  NOR2X1 U620 ( .A(n848), .B(n662), .Y(n796) );
  OAI2BB2XL U621 ( .B0(n836), .B1(n145), .A0N(N1586), .A1N(n837), .Y(n2263) );
  OAI2BB2XL U622 ( .B0(n836), .B1(n1), .A0N(N1585), .A1N(n837), .Y(n2262) );
  OAI2BB2XL U623 ( .B0(n836), .B1(n140), .A0N(N1584), .A1N(n837), .Y(n2261) );
  OAI2BB2XL U624 ( .B0(n836), .B1(n139), .A0N(N1583), .A1N(n837), .Y(n2260) );
  OAI2BB2XL U625 ( .B0(n836), .B1(n150), .A0N(n150), .A1N(n837), .Y(n2259) );
  OAI211X1 U626 ( .A0(n808), .A1(n792), .B0(n850), .C0(n851), .Y(n837) );
  AND4X1 U627 ( .A(n852), .B(n839), .C(n799), .D(n791), .Y(n836) );
  NAND2X1 U628 ( .A(n808), .B(n853), .Y(n791) );
  NOR2X1 U629 ( .A(n854), .B(n855), .Y(n808) );
  NAND4BX1 U630 ( .AN(n856), .B(pc[2]), .C(pc[13]), .D(pc[1]), .Y(n855) );
  NAND4X1 U631 ( .A(pc[12]), .B(pc[11]), .C(pc[10]), .D(pc[0]), .Y(n856) );
  NAND4BX1 U632 ( .AN(n857), .B(pc[9]), .C(pc[7]), .D(pc[8]), .Y(n854) );
  NAND4X1 U633 ( .A(pc[6]), .B(pc[5]), .C(pc[4]), .D(pc[3]), .Y(n857) );
  AO22X1 U634 ( .A0(n858), .A1(wa[0]), .B0(N1526), .B1(n859), .Y(n2258) );
  AO22X1 U635 ( .A0(n858), .A1(wa[1]), .B0(N1527), .B1(n859), .Y(n2257) );
  AO22X1 U636 ( .A0(n858), .A1(wa[2]), .B0(N1528), .B1(n859), .Y(n2256) );
  AO22X1 U637 ( .A0(n858), .A1(wa[3]), .B0(N1529), .B1(n859), .Y(n2255) );
  AO22X1 U638 ( .A0(n858), .A1(wa[4]), .B0(N1530), .B1(n859), .Y(n2254) );
  AO22X1 U639 ( .A0(n858), .A1(wa[5]), .B0(N1531), .B1(n859), .Y(n2253) );
  AO22X1 U640 ( .A0(n858), .A1(wa[6]), .B0(N1532), .B1(n859), .Y(n2252) );
  AO22X1 U641 ( .A0(n858), .A1(wa[7]), .B0(N1533), .B1(n859), .Y(n2251) );
  AO22X1 U642 ( .A0(n858), .A1(wa[8]), .B0(N1534), .B1(n859), .Y(n2250) );
  AO22X1 U643 ( .A0(n858), .A1(wa[9]), .B0(N1535), .B1(n859), .Y(n2249) );
  OAI2BB2XL U644 ( .B0(n1460), .B1(n860), .A0N(DIN[0]), .A1N(n859), .Y(n2248)
         );
  OAI2BB2XL U645 ( .B0(n1459), .B1(n860), .A0N(DIN[1]), .A1N(n859), .Y(n2247)
         );
  OAI2BB2XL U646 ( .B0(n1458), .B1(n860), .A0N(DIN[2]), .A1N(n859), .Y(n2246)
         );
  OAI2BB2XL U647 ( .B0(n1457), .B1(n860), .A0N(DIN[3]), .A1N(n859), .Y(n2245)
         );
  OAI2BB2XL U648 ( .B0(n1456), .B1(n860), .A0N(DIN[4]), .A1N(n859), .Y(n2244)
         );
  OAI2BB2XL U649 ( .B0(n1455), .B1(n860), .A0N(DIN[5]), .A1N(n859), .Y(n2243)
         );
  OAI2BB2XL U650 ( .B0(n1454), .B1(n860), .A0N(DIN[6]), .A1N(n859), .Y(n2242)
         );
  OAI2BB2XL U651 ( .B0(n1453), .B1(n860), .A0N(DIN[7]), .A1N(n859), .Y(n2241)
         );
  NOR3X1 U652 ( .A(n848), .B(n806), .C(n843), .Y(n860) );
  OAI21XL U653 ( .A0(n1452), .A1(n862), .B0(n863), .Y(n2240) );
  OAI2BB2XL U654 ( .B0(n1451), .B1(n862), .A0N(MED[0]), .A1N(n864), .Y(n2239)
         );
  OAI2BB2XL U655 ( .B0(n1450), .B1(n862), .A0N(MED[1]), .A1N(n864), .Y(n2238)
         );
  OAI2BB2XL U656 ( .B0(n1449), .B1(n862), .A0N(MED[2]), .A1N(n864), .Y(n2237)
         );
  OAI2BB2XL U657 ( .B0(n1448), .B1(n862), .A0N(MED[3]), .A1N(n864), .Y(n2236)
         );
  OAI2BB2XL U658 ( .B0(n1447), .B1(n862), .A0N(MED[4]), .A1N(n864), .Y(n2235)
         );
  OAI2BB2XL U659 ( .B0(n1446), .B1(n862), .A0N(MED[5]), .A1N(n864), .Y(n2234)
         );
  OAI2BB2XL U660 ( .B0(n1445), .B1(n862), .A0N(MED[6]), .A1N(n864), .Y(n2233)
         );
  OAI2BB2XL U661 ( .B0(n1444), .B1(n862), .A0N(MED[7]), .A1N(n864), .Y(n2232)
         );
  CLKINVX1 U662 ( .A(n863), .Y(n864) );
  NAND3X1 U663 ( .A(n865), .B(n866), .C(n867), .Y(n863) );
  AOI2BB1X1 U664 ( .A0N(n869), .A1N(n804), .B0(n1443), .Y(n2231) );
  NAND2X1 U665 ( .A(n870), .B(n871), .Y(n2230) );
  AO21X1 U666 ( .A0(n872), .A1(n798), .B0(n869), .Y(n871) );
  OAI21XL U667 ( .A0(n853), .A1(n869), .B0(WE), .Y(n870) );
  NAND4X1 U668 ( .A(n873), .B(n799), .C(n874), .D(n795), .Y(n869) );
  OAI22XL U669 ( .A0(n829), .A1(n875), .B0(n876), .B1(n843), .Y(n2229) );
  AOI222XL U670 ( .A0(n664), .A1(n877), .B0(wa[0]), .B1(n861), .C0(N1156), 
        .C1(n878), .Y(n876) );
  OAI22XL U671 ( .A0(n828), .A1(n875), .B0(n879), .B1(n843), .Y(n2228) );
  AOI222XL U672 ( .A0(N1339), .A1(n877), .B0(wa[1]), .B1(n861), .C0(N1157), 
        .C1(n878), .Y(n879) );
  OAI22XL U673 ( .A0(n827), .A1(n875), .B0(n880), .B1(n843), .Y(n2227) );
  AOI222XL U674 ( .A0(N1340), .A1(n877), .B0(wa[2]), .B1(n861), .C0(N1158), 
        .C1(n878), .Y(n880) );
  OAI22XL U675 ( .A0(n826), .A1(n875), .B0(n881), .B1(n843), .Y(n2226) );
  AOI222XL U676 ( .A0(N1341), .A1(n877), .B0(wa[3]), .B1(n861), .C0(N1159), 
        .C1(n878), .Y(n881) );
  OAI22XL U677 ( .A0(n825), .A1(n875), .B0(n882), .B1(n843), .Y(n2225) );
  AOI222XL U678 ( .A0(N1342), .A1(n877), .B0(wa[4]), .B1(n861), .C0(N1160), 
        .C1(n878), .Y(n882) );
  OAI22XL U679 ( .A0(n824), .A1(n875), .B0(n883), .B1(n843), .Y(n2224) );
  AOI222XL U680 ( .A0(N1343), .A1(n877), .B0(wa[5]), .B1(n861), .C0(N1161), 
        .C1(n878), .Y(n883) );
  OAI22XL U681 ( .A0(n823), .A1(n875), .B0(n884), .B1(n843), .Y(n2223) );
  AOI222XL U682 ( .A0(N1344), .A1(n877), .B0(wa[6]), .B1(n861), .C0(N1162), 
        .C1(n878), .Y(n884) );
  OAI22XL U683 ( .A0(n822), .A1(n875), .B0(n885), .B1(n843), .Y(n2222) );
  AOI222XL U684 ( .A0(N1345), .A1(n877), .B0(wa[7]), .B1(n861), .C0(N1163), 
        .C1(n878), .Y(n885) );
  OAI22XL U685 ( .A0(n821), .A1(n875), .B0(n886), .B1(n843), .Y(n2221) );
  AOI222XL U686 ( .A0(N1346), .A1(n877), .B0(wa[8]), .B1(n861), .C0(N1164), 
        .C1(n878), .Y(n886) );
  OAI22XL U687 ( .A0(n820), .A1(n875), .B0(n887), .B1(n843), .Y(n2220) );
  AOI222XL U688 ( .A0(N1347), .A1(n877), .B0(wa[9]), .B1(n861), .C0(N1165), 
        .C1(n878), .Y(n887) );
  NOR2X1 U689 ( .A(n850), .B(n888), .Y(n878) );
  NOR2X1 U690 ( .A(n890), .B(n891), .Y(n844) );
  AOI2BB1X1 U691 ( .A0N(IEN), .A1N(n889), .B0(n894), .Y(n873) );
  OAI22XL U692 ( .A0(n895), .A1(n17), .B0(n704), .B1(n896), .Y(n2219) );
  OAI22XL U693 ( .A0(n895), .A1(n149), .B0(n896), .B1(n897), .Y(n2218) );
  OAI22XL U694 ( .A0(n895), .A1(n146), .B0(n896), .B1(n898), .Y(n2217) );
  OAI22XL U695 ( .A0(n895), .A1(n151), .B0(n896), .B1(n899), .Y(n2216) );
  CLKINVX1 U696 ( .A(\r1090/A[3] ), .Y(n899) );
  OAI22XL U697 ( .A0(n895), .A1(n16), .B0(n896), .B1(n900), .Y(n2215) );
  OAI22XL U698 ( .A0(n895), .A1(n143), .B0(n896), .B1(n901), .Y(n2214) );
  OAI22XL U699 ( .A0(n895), .A1(n4), .B0(n896), .B1(n902), .Y(n2213) );
  OAI22XL U700 ( .A0(n895), .A1(n144), .B0(n896), .B1(n903), .Y(n2212) );
  NAND4X1 U701 ( .A(n904), .B(n840), .C(n893), .D(n874), .Y(n896) );
  NAND2X1 U702 ( .A(n807), .B(n845), .Y(n840) );
  NAND3X1 U703 ( .A(n794), .B(n905), .C(N965), .Y(n845) );
  AND3X1 U704 ( .A(n904), .B(n794), .C(n906), .Y(n895) );
  NOR3X1 U705 ( .A(n907), .B(n908), .C(n853), .Y(n906) );
  AO22X1 U706 ( .A0(n810), .A1(\r1078/A[2] ), .B0(n811), .B1(px[2]), .Y(n2211)
         );
  AO22X1 U707 ( .A0(n810), .A1(\r1078/A[3] ), .B0(n811), .B1(px[3]), .Y(n2210)
         );
  OAI22XL U708 ( .A0(n909), .A1(n15), .B0(n838), .B1(n910), .Y(n2209) );
  OAI22XL U709 ( .A0(n909), .A1(n142), .B0(n838), .B1(n911), .Y(n2208) );
  OAI22XL U710 ( .A0(n909), .A1(n2), .B0(n838), .B1(n912), .Y(n2207) );
  CLKINVX1 U711 ( .A(n811), .Y(n909) );
  AO22X1 U712 ( .A0(n810), .A1(\r1078/A[7] ), .B0(n811), .B1(px[7]), .Y(n2206)
         );
  OAI221XL U713 ( .A0(n914), .A1(n915), .B0(n819), .B1(n916), .C0(n917), .Y(
        n2205) );
  OAI221XL U714 ( .A0(n914), .A1(n918), .B0(n818), .B1(n916), .C0(n917), .Y(
        n2204) );
  OAI221XL U715 ( .A0(n914), .A1(n919), .B0(n817), .B1(n916), .C0(n917), .Y(
        n2203) );
  OAI221XL U716 ( .A0(n914), .A1(n920), .B0(n816), .B1(n916), .C0(n917), .Y(
        n2202) );
  OAI221XL U717 ( .A0(n914), .A1(n921), .B0(n815), .B1(n916), .C0(n917), .Y(
        n2201) );
  OAI221XL U718 ( .A0(n914), .A1(n922), .B0(n814), .B1(n916), .C0(n917), .Y(
        n2200) );
  OAI221XL U719 ( .A0(n914), .A1(n923), .B0(n813), .B1(n916), .C0(n917), .Y(
        n2199) );
  OAI221XL U720 ( .A0(n914), .A1(n924), .B0(n812), .B1(n916), .C0(n917), .Y(
        n2198) );
  OAI22XL U721 ( .A0(n804), .A1(n925), .B0(n926), .B1(n866), .Y(n917) );
  NAND2X1 U722 ( .A(n851), .B(n792), .Y(n866) );
  CLKINVX1 U723 ( .A(n804), .Y(n792) );
  NOR2X1 U724 ( .A(n893), .B(n888), .Y(n804) );
  AND4X1 U725 ( .A(n904), .B(n893), .C(n800), .D(n846), .Y(n916) );
  AOI22X1 U726 ( .A0(n926), .A1(N1916), .B0(n927), .B1(n662), .Y(n914) );
  NAND3X1 U727 ( .A(n928), .B(n838), .C(n929), .Y(n2197) );
  AOI222XL U728 ( .A0(n925), .A1(n908), .B0(n930), .B1(SE), .C0(n793), .C1(
        n931), .Y(n929) );
  NAND2X1 U729 ( .A(n913), .B(n839), .Y(n930) );
  AND3X1 U730 ( .A(n872), .B(n893), .C(n852), .Y(n913) );
  CLKINVX1 U731 ( .A(n853), .Y(n893) );
  CLKINVX1 U732 ( .A(n932), .Y(n925) );
  CLKINVX1 U733 ( .A(n810), .Y(n838) );
  OAI21XL U734 ( .A0(n794), .A1(n846), .B0(n800), .Y(n810) );
  NAND2BX1 U735 ( .AN(n933), .B(n908), .Y(n800) );
  NAND2X1 U736 ( .A(n934), .B(n935), .Y(n2196) );
  NAND4X1 U737 ( .A(wc[1]), .B(wc[2]), .C(n936), .D(n937), .Y(n935) );
  AND4X1 U738 ( .A(wc[6]), .B(wc[5]), .C(wc[4]), .D(wc[3]), .Y(n937) );
  MXI2X1 U739 ( .A(n938), .B(n839), .S0(wc[0]), .Y(n936) );
  OR4X1 U740 ( .A(n790), .B(wc[7]), .C(wc[8]), .D(wc[9]), .Y(n839) );
  NAND4BX1 U741 ( .AN(wc[9]), .B(n891), .C(wc[7]), .D(wc[8]), .Y(n938) );
  CLKINVX1 U742 ( .A(n799), .Y(n891) );
  NAND2BX1 U743 ( .AN(n872), .B(N960), .Y(n799) );
  OAI31XL U744 ( .A0(n939), .A1(n848), .A2(n894), .B0(BZ), .Y(n934) );
  OAI21XL U745 ( .A0(n18), .A1(n3), .B0(n801), .Y(n894) );
  OAI31XL U746 ( .A0(wc[7]), .A1(wc[9]), .A2(wc[8]), .B0(n890), .Y(n801) );
  NAND2X1 U747 ( .A(n874), .B(n892), .Y(n848) );
  OR2X1 U748 ( .A(N960), .B(n872), .Y(n892) );
  CLKINVX1 U749 ( .A(n940), .Y(n939) );
  AOI211X1 U750 ( .A0(n807), .A1(n806), .B0(n803), .C0(n853), .Y(n940) );
  NAND3X1 U751 ( .A(n905), .B(n931), .C(n794), .Y(n807) );
  AND2X1 U752 ( .A(n941), .B(n942), .Y(n794) );
  NOR4X1 U753 ( .A(n1461), .B(n1462), .C(n1463), .D(n1465), .Y(n942) );
  NOR4BX1 U754 ( .AN(n1464), .B(n1466), .C(n1467), .D(n1468), .Y(n941) );
  CLKINVX1 U755 ( .A(N965), .Y(n931) );
  MXI2X1 U756 ( .A(n352), .B(n943), .S0(n944), .Y(n2195) );
  MXI2X1 U757 ( .A(n353), .B(n945), .S0(n944), .Y(n2194) );
  MXI2X1 U758 ( .A(n354), .B(n946), .S0(n944), .Y(n2193) );
  OAI31XL U759 ( .A0(n952), .A1(n671), .A2(n850), .B0(n954), .Y(n944) );
  MXI2X1 U760 ( .A(n355), .B(n955), .S0(n956), .Y(n2187) );
  MXI2X1 U761 ( .A(n356), .B(n957), .S0(n956), .Y(n2186) );
  MXI2X1 U762 ( .A(n357), .B(n958), .S0(n956), .Y(n2185) );
  OAI31XL U763 ( .A0(n952), .A1(n964), .A2(n850), .B0(n954), .Y(n956) );
  MXI2X1 U764 ( .A(n965), .B(n320), .S0(n966), .Y(n2179) );
  MXI2X1 U765 ( .A(n967), .B(n321), .S0(n966), .Y(n2178) );
  MXI2X1 U766 ( .A(n968), .B(n322), .S0(n966), .Y(n2177) );
  MXI2X1 U767 ( .A(n969), .B(n323), .S0(n966), .Y(n2176) );
  MXI2X1 U768 ( .A(n970), .B(n324), .S0(n966), .Y(n2175) );
  MXI2X1 U769 ( .A(n971), .B(n325), .S0(n966), .Y(n2174) );
  MXI2X1 U770 ( .A(n972), .B(n326), .S0(n966), .Y(n2173) );
  MXI2X1 U771 ( .A(n973), .B(n327), .S0(n966), .Y(n2172) );
  OA21XL U772 ( .A0(n952), .A1(n974), .B0(n954), .Y(n966) );
  NAND2X1 U773 ( .A(rc[5]), .B(rc[4]), .Y(n952) );
  MXI2X1 U774 ( .A(n975), .B(n328), .S0(n976), .Y(n2171) );
  MXI2X1 U775 ( .A(n977), .B(n329), .S0(n976), .Y(n2170) );
  MXI2X1 U776 ( .A(n978), .B(n330), .S0(n976), .Y(n2169) );
  MXI2X1 U777 ( .A(n979), .B(n331), .S0(n976), .Y(n2168) );
  MXI2X1 U778 ( .A(n980), .B(n332), .S0(n976), .Y(n2167) );
  MXI2X1 U779 ( .A(n981), .B(n333), .S0(n976), .Y(n2166) );
  MXI2X1 U780 ( .A(n982), .B(n334), .S0(n976), .Y(n2165) );
  MXI2X1 U781 ( .A(n983), .B(n335), .S0(n976), .Y(n2164) );
  OA21XL U782 ( .A0(n665), .A1(n984), .B0(n954), .Y(n976) );
  MXI2X1 U783 ( .A(n985), .B(n336), .S0(n986), .Y(n2163) );
  MXI2X1 U784 ( .A(n987), .B(n337), .S0(n986), .Y(n2162) );
  MXI2X1 U785 ( .A(n988), .B(n338), .S0(n986), .Y(n2161) );
  MXI2X1 U786 ( .A(n989), .B(n339), .S0(n986), .Y(n2160) );
  MXI2X1 U787 ( .A(n990), .B(n340), .S0(n986), .Y(n2159) );
  MXI2X1 U788 ( .A(n991), .B(n341), .S0(n986), .Y(n2158) );
  MXI2X1 U789 ( .A(n992), .B(n342), .S0(n986), .Y(n2157) );
  MXI2X1 U790 ( .A(n993), .B(n343), .S0(n986), .Y(n2156) );
  OA21XL U791 ( .A0(n697), .A1(n984), .B0(n954), .Y(n986) );
  MXI2X1 U792 ( .A(n994), .B(n344), .S0(n995), .Y(n2155) );
  MXI2X1 U793 ( .A(n996), .B(n345), .S0(n995), .Y(n2154) );
  MXI2X1 U794 ( .A(n997), .B(n346), .S0(n995), .Y(n2153) );
  MXI2X1 U795 ( .A(n998), .B(n347), .S0(n995), .Y(n2152) );
  MXI2X1 U796 ( .A(n999), .B(n348), .S0(n995), .Y(n2151) );
  MXI2X1 U797 ( .A(n1000), .B(n349), .S0(n995), .Y(n2150) );
  MXI2X1 U798 ( .A(n1001), .B(n350), .S0(n995), .Y(n2149) );
  MXI2X1 U799 ( .A(n1002), .B(n351), .S0(n995), .Y(n2148) );
  OA21XL U800 ( .A0(n679), .A1(n984), .B0(n954), .Y(n995) );
  MXI2X1 U801 ( .A(n1004), .B(n131), .S0(n1005), .Y(n2147) );
  MXI2X1 U802 ( .A(n1006), .B(n132), .S0(n1005), .Y(n2146) );
  MXI2X1 U803 ( .A(n1007), .B(n133), .S0(n1005), .Y(n2145) );
  MXI2X1 U804 ( .A(n1008), .B(n134), .S0(n1005), .Y(n2144) );
  MXI2X1 U805 ( .A(n1009), .B(n135), .S0(n1005), .Y(n2143) );
  MXI2X1 U806 ( .A(n1010), .B(n136), .S0(n1005), .Y(n2142) );
  MXI2X1 U807 ( .A(n1011), .B(n137), .S0(n1005), .Y(n2141) );
  MXI2X1 U808 ( .A(n1012), .B(n138), .S0(n1005), .Y(n2140) );
  OA21XL U809 ( .A0(n686), .A1(n984), .B0(n954), .Y(n1005) );
  NAND2X1 U810 ( .A(n1014), .B(n849), .Y(n954) );
  MXI2X1 U811 ( .A(n943), .B(n152), .S0(n1015), .Y(n2139) );
  MXI2X1 U812 ( .A(n945), .B(n153), .S0(n1015), .Y(n2138) );
  MXI2X1 U813 ( .A(n946), .B(n154), .S0(n1015), .Y(n2137) );
  MXI2X1 U814 ( .A(n947), .B(n155), .S0(n1015), .Y(n2136) );
  MXI2X1 U815 ( .A(n948), .B(n156), .S0(n1015), .Y(n2135) );
  MXI2X1 U816 ( .A(n949), .B(n157), .S0(n1015), .Y(n2134) );
  MXI2X1 U817 ( .A(n950), .B(n158), .S0(n1015), .Y(n2133) );
  MXI2X1 U818 ( .A(n951), .B(n159), .S0(n1015), .Y(n2132) );
  OA21XL U819 ( .A0(n690), .A1(n984), .B0(n1016), .Y(n1015) );
  MXI2X1 U820 ( .A(n955), .B(n160), .S0(n1017), .Y(n2131) );
  MXI2X1 U821 ( .A(n957), .B(n161), .S0(n1017), .Y(n2130) );
  MXI2X1 U822 ( .A(n958), .B(n162), .S0(n1017), .Y(n2129) );
  MXI2X1 U823 ( .A(n959), .B(n163), .S0(n1017), .Y(n2128) );
  MXI2X1 U824 ( .A(n960), .B(n164), .S0(n1017), .Y(n2127) );
  MXI2X1 U825 ( .A(n961), .B(n165), .S0(n1017), .Y(n2126) );
  MXI2X1 U826 ( .A(n962), .B(n166), .S0(n1017), .Y(n2125) );
  MXI2X1 U827 ( .A(n963), .B(n167), .S0(n1017), .Y(n2124) );
  OA21XL U828 ( .A0(n674), .A1(n984), .B0(n1016), .Y(n1017) );
  MXI2X1 U829 ( .A(n965), .B(n168), .S0(n1018), .Y(n2123) );
  MXI2X1 U830 ( .A(n967), .B(n169), .S0(n1018), .Y(n2122) );
  MXI2X1 U831 ( .A(n968), .B(n170), .S0(n1018), .Y(n2121) );
  MXI2X1 U832 ( .A(n969), .B(n171), .S0(n1018), .Y(n2120) );
  MXI2X1 U833 ( .A(n970), .B(n172), .S0(n1018), .Y(n2119) );
  MXI2X1 U834 ( .A(n971), .B(n173), .S0(n1018), .Y(n2118) );
  MXI2X1 U835 ( .A(n972), .B(n174), .S0(n1018), .Y(n2117) );
  MXI2X1 U836 ( .A(n973), .B(n175), .S0(n1018), .Y(n2116) );
  OA21XL U837 ( .A0(n964), .A1(n984), .B0(n1016), .Y(n1018) );
  NAND3X1 U838 ( .A(rc[3]), .B(rc[5]), .C(n926), .Y(n984) );
  MXI2X1 U839 ( .A(n192), .B(n975), .S0(n1019), .Y(n2115) );
  MXI2X1 U840 ( .A(n193), .B(n977), .S0(n1019), .Y(n2114) );
  MXI2X1 U841 ( .A(n194), .B(n978), .S0(n1019), .Y(n2113) );
  OAI31XL U842 ( .A0(n974), .A1(n14), .A2(n1), .B0(n1016), .Y(n1019) );
  MXI2X1 U843 ( .A(n985), .B(n176), .S0(n1020), .Y(n2107) );
  MXI2X1 U844 ( .A(n987), .B(n177), .S0(n1020), .Y(n2106) );
  MXI2X1 U845 ( .A(n988), .B(n178), .S0(n1020), .Y(n2105) );
  MXI2X1 U846 ( .A(n989), .B(n179), .S0(n1020), .Y(n2104) );
  MXI2X1 U847 ( .A(n990), .B(n180), .S0(n1020), .Y(n2103) );
  MXI2X1 U848 ( .A(n991), .B(n181), .S0(n1020), .Y(n2102) );
  MXI2X1 U849 ( .A(n992), .B(n182), .S0(n1020), .Y(n2101) );
  MXI2X1 U850 ( .A(n993), .B(n183), .S0(n1020), .Y(n2100) );
  OA21XL U851 ( .A0(n665), .A1(n1021), .B0(n1016), .Y(n1020) );
  MXI2X1 U852 ( .A(n994), .B(n184), .S0(n1022), .Y(n2099) );
  MXI2X1 U853 ( .A(n996), .B(n185), .S0(n1022), .Y(n2098) );
  MXI2X1 U854 ( .A(n997), .B(n186), .S0(n1022), .Y(n2097) );
  MXI2X1 U855 ( .A(n998), .B(n187), .S0(n1022), .Y(n2096) );
  MXI2X1 U856 ( .A(n999), .B(n188), .S0(n1022), .Y(n2095) );
  MXI2X1 U857 ( .A(n1000), .B(n189), .S0(n1022), .Y(n2094) );
  MXI2X1 U858 ( .A(n1001), .B(n190), .S0(n1022), .Y(n2093) );
  MXI2X1 U859 ( .A(n1002), .B(n191), .S0(n1022), .Y(n2092) );
  OA21XL U860 ( .A0(n697), .A1(n1021), .B0(n1016), .Y(n1022) );
  MXI2X1 U861 ( .A(n1004), .B(n297), .S0(n1023), .Y(n2091) );
  MXI2X1 U862 ( .A(n1006), .B(n299), .S0(n1023), .Y(n2090) );
  MXI2X1 U863 ( .A(n1007), .B(n301), .S0(n1023), .Y(n2089) );
  MXI2X1 U864 ( .A(n1008), .B(n303), .S0(n1023), .Y(n2088) );
  MXI2X1 U865 ( .A(n1009), .B(n305), .S0(n1023), .Y(n2087) );
  MXI2X1 U866 ( .A(n1010), .B(n307), .S0(n1023), .Y(n2086) );
  MXI2X1 U867 ( .A(n1011), .B(n309), .S0(n1023), .Y(n2085) );
  MXI2X1 U868 ( .A(n1012), .B(n311), .S0(n1023), .Y(n2084) );
  OA21XL U869 ( .A0(n679), .A1(n1021), .B0(n1016), .Y(n1023) );
  NAND2X1 U870 ( .A(n668), .B(n663), .Y(n1016) );
  MXI2X1 U871 ( .A(n943), .B(n368), .S0(n1024), .Y(n2083) );
  MXI2X1 U872 ( .A(n945), .B(n369), .S0(n1024), .Y(n2082) );
  MXI2X1 U873 ( .A(n946), .B(n370), .S0(n1024), .Y(n2081) );
  MXI2X1 U874 ( .A(n947), .B(n371), .S0(n1024), .Y(n2080) );
  MXI2X1 U875 ( .A(n948), .B(n372), .S0(n1024), .Y(n2079) );
  MXI2X1 U876 ( .A(n949), .B(n373), .S0(n1024), .Y(n2078) );
  MXI2X1 U877 ( .A(n950), .B(n374), .S0(n1024), .Y(n2077) );
  MXI2X1 U878 ( .A(n951), .B(n375), .S0(n1024), .Y(n2076) );
  OA21XL U879 ( .A0(n686), .A1(n1021), .B0(n1025), .Y(n1024) );
  MXI2X1 U880 ( .A(n955), .B(n376), .S0(n1026), .Y(n2075) );
  MXI2X1 U881 ( .A(n957), .B(n377), .S0(n1026), .Y(n2074) );
  MXI2X1 U882 ( .A(n958), .B(n378), .S0(n1026), .Y(n2073) );
  MXI2X1 U883 ( .A(n959), .B(n379), .S0(n1026), .Y(n2072) );
  MXI2X1 U884 ( .A(n960), .B(n380), .S0(n1026), .Y(n2071) );
  MXI2X1 U885 ( .A(n961), .B(n381), .S0(n1026), .Y(n2070) );
  MXI2X1 U886 ( .A(n962), .B(n382), .S0(n1026), .Y(n2069) );
  MXI2X1 U887 ( .A(n963), .B(n383), .S0(n1026), .Y(n2068) );
  OA21XL U888 ( .A0(n690), .A1(n1021), .B0(n1025), .Y(n1026) );
  MXI2X1 U889 ( .A(n965), .B(n384), .S0(n1027), .Y(n2067) );
  MXI2X1 U890 ( .A(n967), .B(n385), .S0(n1027), .Y(n2066) );
  MXI2X1 U891 ( .A(n968), .B(n386), .S0(n1027), .Y(n2065) );
  MXI2X1 U892 ( .A(n969), .B(n387), .S0(n1027), .Y(n2064) );
  MXI2X1 U893 ( .A(n970), .B(n388), .S0(n1027), .Y(n2063) );
  MXI2X1 U894 ( .A(n971), .B(n389), .S0(n1027), .Y(n2062) );
  MXI2X1 U895 ( .A(n972), .B(n390), .S0(n1027), .Y(n2061) );
  MXI2X1 U896 ( .A(n973), .B(n391), .S0(n1027), .Y(n2060) );
  OA21XL U897 ( .A0(n674), .A1(n1021), .B0(n1025), .Y(n1027) );
  MXI2X1 U898 ( .A(n975), .B(n392), .S0(n1028), .Y(n2059) );
  MXI2X1 U899 ( .A(n977), .B(n393), .S0(n1028), .Y(n2058) );
  MXI2X1 U900 ( .A(n978), .B(n394), .S0(n1028), .Y(n2057) );
  MXI2X1 U901 ( .A(n979), .B(n395), .S0(n1028), .Y(n2056) );
  MXI2X1 U902 ( .A(n980), .B(n396), .S0(n1028), .Y(n2055) );
  MXI2X1 U903 ( .A(n981), .B(n397), .S0(n1028), .Y(n2054) );
  MXI2X1 U904 ( .A(n982), .B(n398), .S0(n1028), .Y(n2053) );
  MXI2X1 U905 ( .A(n983), .B(n399), .S0(n1028), .Y(n2052) );
  OA21XL U906 ( .A0(n964), .A1(n1021), .B0(n1025), .Y(n1028) );
  OR2X1 U907 ( .A(n1029), .B(n850), .Y(n1021) );
  MXI2X1 U908 ( .A(n985), .B(n400), .S0(n1030), .Y(n2051) );
  MXI2X1 U909 ( .A(n987), .B(n401), .S0(n1030), .Y(n2050) );
  MXI2X1 U910 ( .A(n988), .B(n402), .S0(n1030), .Y(n2049) );
  MXI2X1 U911 ( .A(n989), .B(n403), .S0(n1030), .Y(n2048) );
  MXI2X1 U912 ( .A(n990), .B(n404), .S0(n1030), .Y(n2047) );
  MXI2X1 U913 ( .A(n991), .B(n405), .S0(n1030), .Y(n2046) );
  MXI2X1 U914 ( .A(n992), .B(n406), .S0(n1030), .Y(n2045) );
  MXI2X1 U915 ( .A(n993), .B(n407), .S0(n1030), .Y(n2044) );
  OA21XL U916 ( .A0(n974), .A1(n1029), .B0(n1025), .Y(n1030) );
  NAND3X1 U917 ( .A(n1), .B(n145), .C(rc[5]), .Y(n1029) );
  MXI2X1 U918 ( .A(n994), .B(n408), .S0(n1031), .Y(n2043) );
  MXI2X1 U919 ( .A(n996), .B(n409), .S0(n1031), .Y(n2042) );
  MXI2X1 U920 ( .A(n997), .B(n410), .S0(n1031), .Y(n2041) );
  MXI2X1 U921 ( .A(n998), .B(n411), .S0(n1031), .Y(n2040) );
  MXI2X1 U922 ( .A(n999), .B(n412), .S0(n1031), .Y(n2039) );
  MXI2X1 U923 ( .A(n1000), .B(n413), .S0(n1031), .Y(n2038) );
  MXI2X1 U924 ( .A(n1001), .B(n414), .S0(n1031), .Y(n2037) );
  MXI2X1 U925 ( .A(n1002), .B(n415), .S0(n1031), .Y(n2036) );
  OA21XL U926 ( .A0(n665), .A1(n1032), .B0(n1025), .Y(n1031) );
  NAND2X1 U927 ( .A(n849), .B(n693), .Y(n1025) );
  MXI2X1 U928 ( .A(n200), .B(n1004), .S0(n1033), .Y(n2035) );
  MXI2X1 U929 ( .A(n201), .B(n1006), .S0(n1033), .Y(n2034) );
  MXI2X1 U930 ( .A(n202), .B(n1007), .S0(n1033), .Y(n2033) );
  MXI2X1 U931 ( .A(n203), .B(n1008), .S0(n1033), .Y(n2032) );
  MXI2X1 U932 ( .A(n204), .B(n1009), .S0(n1033), .Y(n2031) );
  MXI2X1 U933 ( .A(n205), .B(n1010), .S0(n1033), .Y(n2030) );
  MXI2X1 U934 ( .A(n206), .B(n1011), .S0(n1033), .Y(n2029) );
  MXI2X1 U935 ( .A(n207), .B(n1012), .S0(n1033), .Y(n2028) );
  OA21XL U936 ( .A0(n663), .A1(n1034), .B0(n693), .Y(n1033) );
  MXI2X1 U937 ( .A(n312), .B(n943), .S0(n1035), .Y(n2027) );
  MXI2X1 U938 ( .A(n313), .B(n945), .S0(n1035), .Y(n2026) );
  MXI2X1 U939 ( .A(n314), .B(n946), .S0(n1035), .Y(n2025) );
  MXI2X1 U940 ( .A(n315), .B(n947), .S0(n1035), .Y(n2024) );
  MXI2X1 U941 ( .A(n316), .B(n948), .S0(n1035), .Y(n2023) );
  MXI2X1 U942 ( .A(n317), .B(n949), .S0(n1035), .Y(n2022) );
  MXI2X1 U943 ( .A(n318), .B(n950), .S0(n1035), .Y(n2021) );
  MXI2X1 U944 ( .A(n319), .B(n951), .S0(n1035), .Y(n2020) );
  OA21XL U945 ( .A0(n663), .A1(n1034), .B0(n1036), .Y(n1035) );
  MXI2X1 U946 ( .A(n955), .B(n216), .S0(n1037), .Y(n2019) );
  MXI2X1 U947 ( .A(n957), .B(n218), .S0(n1037), .Y(n2018) );
  MXI2X1 U948 ( .A(n958), .B(n220), .S0(n1037), .Y(n2017) );
  MXI2X1 U949 ( .A(n959), .B(n222), .S0(n1037), .Y(n2016) );
  MXI2X1 U950 ( .A(n960), .B(n224), .S0(n1037), .Y(n2015) );
  MXI2X1 U951 ( .A(n961), .B(n226), .S0(n1037), .Y(n2014) );
  MXI2X1 U952 ( .A(n962), .B(n228), .S0(n1037), .Y(n2013) );
  MXI2X1 U953 ( .A(n963), .B(n230), .S0(n1037), .Y(n2012) );
  OA21XL U954 ( .A0(n686), .A1(n1032), .B0(n1038), .Y(n1037) );
  MXI2X1 U955 ( .A(n965), .B(n232), .S0(n1039), .Y(n2011) );
  MXI2X1 U956 ( .A(n967), .B(n234), .S0(n1039), .Y(n2010) );
  MXI2X1 U957 ( .A(n968), .B(n236), .S0(n1039), .Y(n2009) );
  MXI2X1 U958 ( .A(n969), .B(n238), .S0(n1039), .Y(n2008) );
  MXI2X1 U959 ( .A(n970), .B(n240), .S0(n1039), .Y(n2007) );
  MXI2X1 U960 ( .A(n971), .B(n242), .S0(n1039), .Y(n2006) );
  MXI2X1 U961 ( .A(n972), .B(n244), .S0(n1039), .Y(n2005) );
  MXI2X1 U962 ( .A(n973), .B(n246), .S0(n1039), .Y(n2004) );
  OA21XL U963 ( .A0(n690), .A1(n1032), .B0(n1038), .Y(n1039) );
  MXI2X1 U964 ( .A(n975), .B(n248), .S0(n1040), .Y(n2003) );
  MXI2X1 U965 ( .A(n977), .B(n250), .S0(n1040), .Y(n2002) );
  MXI2X1 U966 ( .A(n978), .B(n252), .S0(n1040), .Y(n2001) );
  MXI2X1 U967 ( .A(n979), .B(n254), .S0(n1040), .Y(n2000) );
  MXI2X1 U968 ( .A(n980), .B(n256), .S0(n1040), .Y(n1999) );
  MXI2X1 U969 ( .A(n981), .B(n258), .S0(n1040), .Y(n1998) );
  MXI2X1 U970 ( .A(n982), .B(n260), .S0(n1040), .Y(n1997) );
  MXI2X1 U971 ( .A(n983), .B(n262), .S0(n1040), .Y(n1996) );
  OA21XL U972 ( .A0(n674), .A1(n1032), .B0(n1038), .Y(n1040) );
  MXI2X1 U973 ( .A(n985), .B(n264), .S0(n1041), .Y(n1995) );
  MXI2X1 U974 ( .A(n987), .B(n266), .S0(n1041), .Y(n1994) );
  MXI2X1 U975 ( .A(n988), .B(n268), .S0(n1041), .Y(n1993) );
  MXI2X1 U976 ( .A(n989), .B(n270), .S0(n1041), .Y(n1992) );
  MXI2X1 U977 ( .A(n990), .B(n272), .S0(n1041), .Y(n1991) );
  MXI2X1 U978 ( .A(n991), .B(n274), .S0(n1041), .Y(n1990) );
  MXI2X1 U979 ( .A(n992), .B(n276), .S0(n1041), .Y(n1989) );
  MXI2X1 U980 ( .A(n993), .B(n278), .S0(n1041), .Y(n1988) );
  OA21XL U981 ( .A0(n964), .A1(n1032), .B0(n1038), .Y(n1041) );
  CLKINVX1 U982 ( .A(n1034), .Y(n1032) );
  NOR2X1 U983 ( .A(n1042), .B(n850), .Y(n1034) );
  MXI2X1 U984 ( .A(n994), .B(n280), .S0(n1043), .Y(n1987) );
  MXI2X1 U985 ( .A(n996), .B(n282), .S0(n1043), .Y(n1986) );
  MXI2X1 U986 ( .A(n997), .B(n284), .S0(n1043), .Y(n1985) );
  MXI2X1 U987 ( .A(n998), .B(n286), .S0(n1043), .Y(n1984) );
  MXI2X1 U988 ( .A(n999), .B(n288), .S0(n1043), .Y(n1983) );
  MXI2X1 U989 ( .A(n1000), .B(n290), .S0(n1043), .Y(n1982) );
  MXI2X1 U990 ( .A(n1001), .B(n292), .S0(n1043), .Y(n1981) );
  MXI2X1 U991 ( .A(n1002), .B(n294), .S0(n1043), .Y(n1980) );
  OA21XL U992 ( .A0(n974), .A1(n1042), .B0(n1038), .Y(n1043) );
  NAND2X1 U993 ( .A(rc[3]), .B(rc[4]), .Y(n1042) );
  MXI2X1 U994 ( .A(n1004), .B(n115), .S0(n1044), .Y(n1979) );
  MXI2X1 U995 ( .A(n1006), .B(n116), .S0(n1044), .Y(n1978) );
  MXI2X1 U996 ( .A(n1007), .B(n117), .S0(n1044), .Y(n1977) );
  MXI2X1 U997 ( .A(n1008), .B(n118), .S0(n1044), .Y(n1976) );
  MXI2X1 U998 ( .A(n1009), .B(n119), .S0(n1044), .Y(n1975) );
  MXI2X1 U999 ( .A(n1010), .B(n120), .S0(n1044), .Y(n1974) );
  MXI2X1 U1000 ( .A(n1011), .B(n121), .S0(n1044), .Y(n1973) );
  MXI2X1 U1001 ( .A(n1012), .B(n122), .S0(n1044), .Y(n1972) );
  OA21XL U1002 ( .A0(n665), .A1(n1045), .B0(n1038), .Y(n1044) );
  NAND2X1 U1003 ( .A(n663), .B(n1036), .Y(n1038) );
  MXI2X1 U1004 ( .A(n943), .B(n19), .S0(n1046), .Y(n1971) );
  MXI2X1 U1005 ( .A(n945), .B(n21), .S0(n1046), .Y(n1970) );
  MXI2X1 U1006 ( .A(n946), .B(n23), .S0(n1046), .Y(n1969) );
  MXI2X1 U1007 ( .A(n947), .B(n25), .S0(n1046), .Y(n1968) );
  MXI2X1 U1008 ( .A(n948), .B(n27), .S0(n1046), .Y(n1967) );
  MXI2X1 U1009 ( .A(n949), .B(n29), .S0(n1046), .Y(n1966) );
  MXI2X1 U1010 ( .A(n950), .B(n31), .S0(n1046), .Y(n1965) );
  MXI2X1 U1011 ( .A(n951), .B(n33), .S0(n1046), .Y(n1964) );
  OA21XL U1012 ( .A0(n697), .A1(n1045), .B0(n1047), .Y(n1046) );
  MXI2X1 U1013 ( .A(n955), .B(n35), .S0(n1048), .Y(n1963) );
  MXI2X1 U1014 ( .A(n957), .B(n37), .S0(n1048), .Y(n1962) );
  MXI2X1 U1015 ( .A(n958), .B(n39), .S0(n1048), .Y(n1961) );
  MXI2X1 U1016 ( .A(n959), .B(n41), .S0(n1048), .Y(n1960) );
  MXI2X1 U1017 ( .A(n960), .B(n43), .S0(n1048), .Y(n1959) );
  MXI2X1 U1018 ( .A(n961), .B(n45), .S0(n1048), .Y(n1958) );
  MXI2X1 U1019 ( .A(n962), .B(n47), .S0(n1048), .Y(n1957) );
  MXI2X1 U1020 ( .A(n963), .B(n49), .S0(n1048), .Y(n1956) );
  OA21XL U1021 ( .A0(n679), .A1(n1045), .B0(n1047), .Y(n1048) );
  MXI2X1 U1022 ( .A(n965), .B(n51), .S0(n1049), .Y(n1955) );
  MXI2X1 U1023 ( .A(n967), .B(n53), .S0(n1049), .Y(n1954) );
  MXI2X1 U1024 ( .A(n968), .B(n55), .S0(n1049), .Y(n1953) );
  MXI2X1 U1025 ( .A(n969), .B(n57), .S0(n1049), .Y(n1952) );
  MXI2X1 U1026 ( .A(n970), .B(n59), .S0(n1049), .Y(n1951) );
  MXI2X1 U1027 ( .A(n971), .B(n61), .S0(n1049), .Y(n1950) );
  MXI2X1 U1028 ( .A(n972), .B(n63), .S0(n1049), .Y(n1949) );
  MXI2X1 U1029 ( .A(n973), .B(n65), .S0(n1049), .Y(n1948) );
  OA21XL U1030 ( .A0(n686), .A1(n1045), .B0(n1047), .Y(n1049) );
  MXI2X1 U1031 ( .A(n975), .B(n67), .S0(n1050), .Y(n1947) );
  MXI2X1 U1032 ( .A(n977), .B(n69), .S0(n1050), .Y(n1946) );
  MXI2X1 U1033 ( .A(n978), .B(n71), .S0(n1050), .Y(n1945) );
  MXI2X1 U1034 ( .A(n979), .B(n73), .S0(n1050), .Y(n1944) );
  MXI2X1 U1035 ( .A(n980), .B(n75), .S0(n1050), .Y(n1943) );
  MXI2X1 U1036 ( .A(n981), .B(n77), .S0(n1050), .Y(n1942) );
  MXI2X1 U1037 ( .A(n982), .B(n79), .S0(n1050), .Y(n1941) );
  MXI2X1 U1038 ( .A(n983), .B(n81), .S0(n1050), .Y(n1940) );
  OA21XL U1039 ( .A0(n690), .A1(n1045), .B0(n1047), .Y(n1050) );
  MXI2X1 U1040 ( .A(n985), .B(n83), .S0(n1051), .Y(n1939) );
  MXI2X1 U1041 ( .A(n987), .B(n85), .S0(n1051), .Y(n1938) );
  MXI2X1 U1042 ( .A(n988), .B(n87), .S0(n1051), .Y(n1937) );
  MXI2X1 U1043 ( .A(n989), .B(n89), .S0(n1051), .Y(n1936) );
  MXI2X1 U1044 ( .A(n990), .B(n91), .S0(n1051), .Y(n1935) );
  MXI2X1 U1045 ( .A(n991), .B(n93), .S0(n1051), .Y(n1934) );
  MXI2X1 U1046 ( .A(n992), .B(n95), .S0(n1051), .Y(n1933) );
  MXI2X1 U1047 ( .A(n993), .B(n97), .S0(n1051), .Y(n1932) );
  OA21XL U1048 ( .A0(n674), .A1(n1045), .B0(n1047), .Y(n1051) );
  MXI2X1 U1049 ( .A(n994), .B(n99), .S0(n1052), .Y(n1931) );
  MXI2X1 U1050 ( .A(n996), .B(n101), .S0(n1052), .Y(n1930) );
  MXI2X1 U1051 ( .A(n997), .B(n103), .S0(n1052), .Y(n1929) );
  MXI2X1 U1052 ( .A(n998), .B(n105), .S0(n1052), .Y(n1928) );
  MXI2X1 U1053 ( .A(n999), .B(n107), .S0(n1052), .Y(n1927) );
  MXI2X1 U1054 ( .A(n1000), .B(n109), .S0(n1052), .Y(n1926) );
  MXI2X1 U1055 ( .A(n1001), .B(n111), .S0(n1052), .Y(n1925) );
  MXI2X1 U1056 ( .A(n1002), .B(n113), .S0(n1052), .Y(n1924) );
  OA21XL U1057 ( .A0(n964), .A1(n1045), .B0(n1047), .Y(n1052) );
  OR2X1 U1058 ( .A(n1053), .B(n850), .Y(n1045) );
  MXI2X1 U1059 ( .A(n1004), .B(n5), .S0(n1054), .Y(n1923) );
  MXI2X1 U1060 ( .A(n1006), .B(n6), .S0(n1054), .Y(n1922) );
  MXI2X1 U1061 ( .A(n1007), .B(n7), .S0(n1054), .Y(n1921) );
  MXI2X1 U1062 ( .A(n1008), .B(n8), .S0(n1054), .Y(n1920) );
  MXI2X1 U1063 ( .A(n1009), .B(n9), .S0(n1054), .Y(n1919) );
  MXI2X1 U1064 ( .A(n1010), .B(n10), .S0(n1054), .Y(n1918) );
  MXI2X1 U1065 ( .A(n1011), .B(n11), .S0(n1054), .Y(n1917) );
  MXI2X1 U1066 ( .A(n1012), .B(n12), .S0(n1054), .Y(n1916) );
  OA21XL U1067 ( .A0(n974), .A1(n1053), .B0(n1047), .Y(n1054) );
  NAND2X1 U1068 ( .A(n662), .B(n1055), .Y(n1047) );
  NAND3X1 U1069 ( .A(n1), .B(n14), .C(rc[4]), .Y(n1053) );
  MXI2X1 U1070 ( .A(n943), .B(n20), .S0(n1056), .Y(n1915) );
  MXI2X1 U1071 ( .A(n945), .B(n22), .S0(n1056), .Y(n1914) );
  MXI2X1 U1072 ( .A(n946), .B(n24), .S0(n1056), .Y(n1913) );
  MXI2X1 U1073 ( .A(n947), .B(n26), .S0(n1056), .Y(n1912) );
  MXI2X1 U1074 ( .A(n948), .B(n28), .S0(n1056), .Y(n1911) );
  MXI2X1 U1075 ( .A(n949), .B(n30), .S0(n1056), .Y(n1910) );
  MXI2X1 U1076 ( .A(n950), .B(n32), .S0(n1056), .Y(n1909) );
  MXI2X1 U1077 ( .A(n951), .B(n34), .S0(n1056), .Y(n1908) );
  OA21XL U1078 ( .A0(n665), .A1(n1057), .B0(n1058), .Y(n1056) );
  MXI2X1 U1079 ( .A(n955), .B(n36), .S0(n1059), .Y(n1907) );
  MXI2X1 U1080 ( .A(n957), .B(n38), .S0(n1059), .Y(n1906) );
  MXI2X1 U1081 ( .A(n958), .B(n40), .S0(n1059), .Y(n1905) );
  MXI2X1 U1082 ( .A(n959), .B(n42), .S0(n1059), .Y(n1904) );
  MXI2X1 U1083 ( .A(n960), .B(n44), .S0(n1059), .Y(n1903) );
  MXI2X1 U1084 ( .A(n961), .B(n46), .S0(n1059), .Y(n1902) );
  MXI2X1 U1085 ( .A(n962), .B(n48), .S0(n1059), .Y(n1901) );
  MXI2X1 U1086 ( .A(n963), .B(n50), .S0(n1059), .Y(n1900) );
  OA21XL U1087 ( .A0(n697), .A1(n1057), .B0(n1058), .Y(n1059) );
  MXI2X1 U1088 ( .A(n965), .B(n52), .S0(n1060), .Y(n1899) );
  MXI2X1 U1089 ( .A(n967), .B(n54), .S0(n1060), .Y(n1898) );
  MXI2X1 U1090 ( .A(n968), .B(n56), .S0(n1060), .Y(n1897) );
  MXI2X1 U1091 ( .A(n969), .B(n58), .S0(n1060), .Y(n1896) );
  MXI2X1 U1092 ( .A(n970), .B(n60), .S0(n1060), .Y(n1895) );
  MXI2X1 U1093 ( .A(n971), .B(n62), .S0(n1060), .Y(n1894) );
  MXI2X1 U1094 ( .A(n972), .B(n64), .S0(n1060), .Y(n1893) );
  MXI2X1 U1095 ( .A(n973), .B(n66), .S0(n1060), .Y(n1892) );
  OA21XL U1096 ( .A0(n679), .A1(n1057), .B0(n1058), .Y(n1060) );
  MXI2X1 U1097 ( .A(n975), .B(n68), .S0(n1061), .Y(n1891) );
  MXI2X1 U1098 ( .A(n977), .B(n70), .S0(n1061), .Y(n1890) );
  MXI2X1 U1099 ( .A(n978), .B(n72), .S0(n1061), .Y(n1889) );
  MXI2X1 U1100 ( .A(n979), .B(n74), .S0(n1061), .Y(n1888) );
  MXI2X1 U1101 ( .A(n980), .B(n76), .S0(n1061), .Y(n1887) );
  MXI2X1 U1102 ( .A(n981), .B(n78), .S0(n1061), .Y(n1886) );
  MXI2X1 U1103 ( .A(n982), .B(n80), .S0(n1061), .Y(n1885) );
  MXI2X1 U1104 ( .A(n983), .B(n82), .S0(n1061), .Y(n1884) );
  OA21XL U1105 ( .A0(n686), .A1(n1057), .B0(n1058), .Y(n1061) );
  MXI2X1 U1106 ( .A(n985), .B(n84), .S0(n1062), .Y(n1883) );
  MXI2X1 U1107 ( .A(n987), .B(n86), .S0(n1062), .Y(n1882) );
  MXI2X1 U1108 ( .A(n988), .B(n88), .S0(n1062), .Y(n1881) );
  MXI2X1 U1109 ( .A(n989), .B(n90), .S0(n1062), .Y(n1880) );
  MXI2X1 U1110 ( .A(n990), .B(n92), .S0(n1062), .Y(n1879) );
  MXI2X1 U1111 ( .A(n991), .B(n94), .S0(n1062), .Y(n1878) );
  MXI2X1 U1112 ( .A(n992), .B(n96), .S0(n1062), .Y(n1877) );
  MXI2X1 U1113 ( .A(n993), .B(n98), .S0(n1062), .Y(n1876) );
  OA21XL U1114 ( .A0(n690), .A1(n1057), .B0(n1058), .Y(n1062) );
  MXI2X1 U1115 ( .A(n994), .B(n100), .S0(n1063), .Y(n1875) );
  MXI2X1 U1116 ( .A(n996), .B(n102), .S0(n1063), .Y(n1874) );
  MXI2X1 U1117 ( .A(n997), .B(n104), .S0(n1063), .Y(n1873) );
  MXI2X1 U1118 ( .A(n998), .B(n106), .S0(n1063), .Y(n1872) );
  MXI2X1 U1119 ( .A(n999), .B(n108), .S0(n1063), .Y(n1871) );
  MXI2X1 U1120 ( .A(n1000), .B(n110), .S0(n1063), .Y(n1870) );
  MXI2X1 U1121 ( .A(n1001), .B(n112), .S0(n1063), .Y(n1869) );
  MXI2X1 U1122 ( .A(n1002), .B(n114), .S0(n1063), .Y(n1868) );
  OA21XL U1123 ( .A0(n674), .A1(n1057), .B0(n1058), .Y(n1063) );
  MXI2X1 U1124 ( .A(n1004), .B(n296), .S0(n1064), .Y(n1867) );
  MXI2X1 U1125 ( .A(n1006), .B(n298), .S0(n1064), .Y(n1866) );
  MXI2X1 U1126 ( .A(n1007), .B(n300), .S0(n1064), .Y(n1865) );
  MXI2X1 U1127 ( .A(n1008), .B(n302), .S0(n1064), .Y(n1864) );
  MXI2X1 U1128 ( .A(n1009), .B(n304), .S0(n1064), .Y(n1863) );
  MXI2X1 U1129 ( .A(n1010), .B(n306), .S0(n1064), .Y(n1862) );
  MXI2X1 U1130 ( .A(n1011), .B(n308), .S0(n1064), .Y(n1861) );
  MXI2X1 U1131 ( .A(n1012), .B(n310), .S0(n1064), .Y(n1860) );
  OA21XL U1132 ( .A0(n964), .A1(n1057), .B0(n1058), .Y(n1064) );
  NAND2X1 U1133 ( .A(n849), .B(n691), .Y(n1058) );
  NAND2X1 U1134 ( .A(n1014), .B(n926), .Y(n1057) );
  MXI2X1 U1135 ( .A(n943), .B(n208), .S0(n1065), .Y(n1859) );
  OA21XL U1136 ( .A0(n915), .A1(n1066), .B0(n1067), .Y(n943) );
  CLKINVX1 U1137 ( .A(Q[0]), .Y(n915) );
  MXI2X1 U1138 ( .A(n945), .B(n209), .S0(n1065), .Y(n1858) );
  OA21XL U1139 ( .A0(n918), .A1(n1066), .B0(n1068), .Y(n945) );
  CLKINVX1 U1140 ( .A(Q[1]), .Y(n918) );
  MXI2X1 U1141 ( .A(n946), .B(n210), .S0(n1065), .Y(n1857) );
  OA21XL U1142 ( .A0(n919), .A1(n1066), .B0(n1069), .Y(n946) );
  CLKINVX1 U1143 ( .A(Q[2]), .Y(n919) );
  MXI2X1 U1144 ( .A(n947), .B(n211), .S0(n1065), .Y(n1856) );
  OA21XL U1145 ( .A0(n920), .A1(n1066), .B0(n1070), .Y(n947) );
  CLKINVX1 U1146 ( .A(Q[3]), .Y(n920) );
  MXI2X1 U1147 ( .A(n948), .B(n212), .S0(n1065), .Y(n1855) );
  OA21XL U1148 ( .A0(n921), .A1(n1066), .B0(n1071), .Y(n948) );
  CLKINVX1 U1149 ( .A(Q[4]), .Y(n921) );
  MXI2X1 U1150 ( .A(n949), .B(n213), .S0(n1065), .Y(n1854) );
  OA21XL U1151 ( .A0(n922), .A1(n1066), .B0(n1072), .Y(n949) );
  CLKINVX1 U1152 ( .A(Q[5]), .Y(n922) );
  MXI2X1 U1153 ( .A(n950), .B(n214), .S0(n1065), .Y(n1853) );
  OA21XL U1154 ( .A0(n923), .A1(n1066), .B0(n1073), .Y(n950) );
  CLKINVX1 U1155 ( .A(Q[6]), .Y(n923) );
  MXI2X1 U1156 ( .A(n951), .B(n215), .S0(n1065), .Y(n1852) );
  OA21XL U1157 ( .A0(n1074), .A1(n974), .B0(n1075), .Y(n1065) );
  NAND2X1 U1158 ( .A(n926), .B(n865), .Y(n974) );
  CLKINVX1 U1159 ( .A(n1014), .Y(n1074) );
  NOR3X1 U1160 ( .A(rc[4]), .B(rc[5]), .C(n1), .Y(n1014) );
  OA21XL U1161 ( .A0(n924), .A1(n1066), .B0(n1076), .Y(n951) );
  NAND2X1 U1162 ( .A(n663), .B(n927), .Y(n1066) );
  NAND2X1 U1163 ( .A(n1077), .B(n1078), .Y(n927) );
  AOI221XL U1164 ( .A0(N2349), .A1(n691), .B0(N2419), .B1(n1036), .C0(n1079), 
        .Y(n1078) );
  AO22X1 U1165 ( .A0(n1080), .A1(N2314), .B0(n668), .B1(N2489), .Y(n1079) );
  AOI222XL U1166 ( .A0(N2454), .A1(n693), .B0(N2384), .B1(n1055), .C0(N2524), 
        .C1(n865), .Y(n1077) );
  CLKINVX1 U1167 ( .A(Q[7]), .Y(n924) );
  MXI2X1 U1168 ( .A(n955), .B(n217), .S0(n1081), .Y(n1851) );
  OAI31XL U1169 ( .A0(n1082), .A1(n1083), .A2(n1084), .B0(n1085), .Y(n955) );
  OAI22XL U1170 ( .A0(n682), .A1(n19), .B0(n675), .B1(n312), .Y(n1084) );
  OAI22XL U1171 ( .A0(n689), .A1(n20), .B0(n671), .B1(n208), .Y(n1083) );
  OAI211X1 U1172 ( .A0(n665), .A1(n152), .B0(n1067), .C0(n1086), .Y(n1082) );
  AOI2BB2X1 U1173 ( .B0(n693), .B1(n1442), .A0N(n703), .A1N(n352), .Y(n1086)
         );
  MXI2X1 U1174 ( .A(n957), .B(n219), .S0(n1081), .Y(n1850) );
  OAI31XL U1175 ( .A0(n1088), .A1(n1089), .A2(n1090), .B0(n1091), .Y(n957) );
  OAI22XL U1176 ( .A0(n682), .A1(n21), .B0(n675), .B1(n313), .Y(n1090) );
  OAI22XL U1177 ( .A0(n689), .A1(n22), .B0(n671), .B1(n209), .Y(n1089) );
  OAI211X1 U1178 ( .A0(n665), .A1(n153), .B0(n1068), .C0(n1092), .Y(n1088) );
  AOI2BB2X1 U1179 ( .B0(n693), .B1(n1441), .A0N(n703), .A1N(n353), .Y(n1092)
         );
  MXI2X1 U1180 ( .A(n958), .B(n221), .S0(n1081), .Y(n1849) );
  OAI31XL U1181 ( .A0(n1093), .A1(n1094), .A2(n1095), .B0(n1096), .Y(n958) );
  OAI22XL U1182 ( .A0(n682), .A1(n23), .B0(n675), .B1(n314), .Y(n1095) );
  OAI22XL U1183 ( .A0(n689), .A1(n24), .B0(n671), .B1(n210), .Y(n1094) );
  OAI211X1 U1184 ( .A0(n665), .A1(n154), .B0(n1069), .C0(n1097), .Y(n1093) );
  AOI2BB2X1 U1185 ( .B0(n693), .B1(n1440), .A0N(n703), .A1N(n354), .Y(n1097)
         );
  MXI2X1 U1186 ( .A(n959), .B(n223), .S0(n1081), .Y(n1848) );
  OAI31XL U1187 ( .A0(n1098), .A1(n1099), .A2(n1100), .B0(n1101), .Y(n959) );
  OAI22XL U1188 ( .A0(n682), .A1(n25), .B0(n675), .B1(n315), .Y(n1100) );
  OAI22XL U1189 ( .A0(n689), .A1(n26), .B0(n671), .B1(n211), .Y(n1099) );
  OAI211X1 U1190 ( .A0(n665), .A1(n155), .B0(n1070), .C0(n1102), .Y(n1098) );
  AOI2BB2X1 U1191 ( .B0(n693), .B1(n1439), .A0N(n703), .A1N(n358), .Y(n1102)
         );
  MXI2X1 U1192 ( .A(n960), .B(n225), .S0(n1081), .Y(n1847) );
  OAI31XL U1193 ( .A0(n1103), .A1(n1104), .A2(n1105), .B0(n1106), .Y(n960) );
  OAI22XL U1194 ( .A0(n682), .A1(n27), .B0(n675), .B1(n316), .Y(n1105) );
  OAI22XL U1195 ( .A0(n689), .A1(n28), .B0(n671), .B1(n212), .Y(n1104) );
  OAI211X1 U1196 ( .A0(n665), .A1(n156), .B0(n1071), .C0(n1107), .Y(n1103) );
  AOI2BB2X1 U1197 ( .B0(n693), .B1(n1438), .A0N(n703), .A1N(n359), .Y(n1107)
         );
  MXI2X1 U1198 ( .A(n961), .B(n227), .S0(n1081), .Y(n1846) );
  OAI31XL U1199 ( .A0(n1108), .A1(n1109), .A2(n1110), .B0(n1111), .Y(n961) );
  OAI22XL U1200 ( .A0(n683), .A1(n29), .B0(n675), .B1(n317), .Y(n1110) );
  OAI22XL U1201 ( .A0(n689), .A1(n30), .B0(n671), .B1(n213), .Y(n1109) );
  OAI211X1 U1202 ( .A0(n665), .A1(n157), .B0(n1072), .C0(n1112), .Y(n1108) );
  AOI2BB2X1 U1203 ( .B0(n693), .B1(n1437), .A0N(n703), .A1N(n360), .Y(n1112)
         );
  MXI2X1 U1204 ( .A(n962), .B(n229), .S0(n1081), .Y(n1845) );
  OAI31XL U1205 ( .A0(n1113), .A1(n1114), .A2(n1115), .B0(n1116), .Y(n962) );
  OAI22XL U1206 ( .A0(n683), .A1(n31), .B0(n675), .B1(n318), .Y(n1115) );
  OAI22XL U1207 ( .A0(n689), .A1(n32), .B0(n671), .B1(n214), .Y(n1114) );
  OAI211X1 U1208 ( .A0(n665), .A1(n158), .B0(n1073), .C0(n1117), .Y(n1113) );
  AOI2BB2X1 U1209 ( .B0(n693), .B1(n1436), .A0N(n703), .A1N(n361), .Y(n1117)
         );
  MXI2X1 U1210 ( .A(n963), .B(n231), .S0(n1081), .Y(n1844) );
  OA21XL U1211 ( .A0(n665), .A1(n1118), .B0(n1075), .Y(n1081) );
  OAI31XL U1212 ( .A0(n1119), .A1(n1120), .A2(n1121), .B0(n1122), .Y(n963) );
  OAI22XL U1213 ( .A0(n683), .A1(n33), .B0(n675), .B1(n319), .Y(n1121) );
  OAI22XL U1214 ( .A0(n689), .A1(n34), .B0(n671), .B1(n215), .Y(n1120) );
  OAI211X1 U1215 ( .A0(n665), .A1(n159), .B0(n1076), .C0(n1123), .Y(n1119) );
  AOI2BB2X1 U1216 ( .B0(n693), .B1(n1435), .A0N(n703), .A1N(n362), .Y(n1123)
         );
  MXI2X1 U1217 ( .A(n965), .B(n233), .S0(n1124), .Y(n1843) );
  OAI31XL U1218 ( .A0(n1125), .A1(n1126), .A2(n1127), .B0(n1085), .Y(n965) );
  OAI22XL U1219 ( .A0(n683), .A1(n35), .B0(n675), .B1(n216), .Y(n1127) );
  OAI22XL U1220 ( .A0(n689), .A1(n36), .B0(n671), .B1(n217), .Y(n1126) );
  OAI211X1 U1221 ( .A0(n665), .A1(n160), .B0(n1067), .C0(n1128), .Y(n1125) );
  AOI2BB2X1 U1222 ( .B0(n693), .B1(n1434), .A0N(n702), .A1N(n355), .Y(n1128)
         );
  MXI2X1 U1223 ( .A(n967), .B(n235), .S0(n1124), .Y(n1842) );
  OAI31XL U1224 ( .A0(n1129), .A1(n1130), .A2(n1131), .B0(n1091), .Y(n967) );
  OAI22XL U1225 ( .A0(n683), .A1(n37), .B0(n675), .B1(n218), .Y(n1131) );
  OAI22XL U1226 ( .A0(n689), .A1(n38), .B0(n671), .B1(n219), .Y(n1130) );
  OAI211X1 U1227 ( .A0(n665), .A1(n161), .B0(n1068), .C0(n1132), .Y(n1129) );
  AOI2BB2X1 U1228 ( .B0(n694), .B1(n1433), .A0N(n702), .A1N(n356), .Y(n1132)
         );
  MXI2X1 U1229 ( .A(n968), .B(n237), .S0(n1124), .Y(n1841) );
  OAI31XL U1230 ( .A0(n1133), .A1(n1134), .A2(n1135), .B0(n1096), .Y(n968) );
  OAI22XL U1231 ( .A0(n683), .A1(n39), .B0(n675), .B1(n220), .Y(n1135) );
  OAI22XL U1232 ( .A0(n689), .A1(n40), .B0(n671), .B1(n221), .Y(n1134) );
  OAI211X1 U1233 ( .A0(n665), .A1(n162), .B0(n1069), .C0(n1136), .Y(n1133) );
  AOI2BB2X1 U1234 ( .B0(n693), .B1(n1432), .A0N(n702), .A1N(n357), .Y(n1136)
         );
  MXI2X1 U1235 ( .A(n969), .B(n239), .S0(n1124), .Y(n1840) );
  OAI31XL U1236 ( .A0(n1137), .A1(n1138), .A2(n1139), .B0(n1101), .Y(n969) );
  OAI22XL U1237 ( .A0(n684), .A1(n41), .B0(n675), .B1(n222), .Y(n1139) );
  OAI22XL U1238 ( .A0(n689), .A1(n42), .B0(n671), .B1(n223), .Y(n1138) );
  OAI211X1 U1239 ( .A0(n665), .A1(n163), .B0(n1070), .C0(n1140), .Y(n1137) );
  AOI2BB2X1 U1240 ( .B0(n693), .B1(n1431), .A0N(n702), .A1N(n363), .Y(n1140)
         );
  MXI2X1 U1241 ( .A(n970), .B(n241), .S0(n1124), .Y(n1839) );
  OAI31XL U1242 ( .A0(n1141), .A1(n1142), .A2(n1143), .B0(n1106), .Y(n970) );
  OAI22XL U1243 ( .A0(n683), .A1(n43), .B0(n675), .B1(n224), .Y(n1143) );
  OAI22XL U1244 ( .A0(n689), .A1(n44), .B0(n671), .B1(n225), .Y(n1142) );
  OAI211X1 U1245 ( .A0(n666), .A1(n164), .B0(n1071), .C0(n1144), .Y(n1141) );
  AOI2BB2X1 U1246 ( .B0(n693), .B1(n1430), .A0N(n702), .A1N(n364), .Y(n1144)
         );
  MXI2X1 U1247 ( .A(n971), .B(n243), .S0(n1124), .Y(n1838) );
  OAI31XL U1248 ( .A0(n1145), .A1(n1146), .A2(n1147), .B0(n1111), .Y(n971) );
  OAI22XL U1249 ( .A0(n683), .A1(n45), .B0(n676), .B1(n226), .Y(n1147) );
  OAI22XL U1250 ( .A0(n689), .A1(n46), .B0(n671), .B1(n227), .Y(n1146) );
  OAI211X1 U1251 ( .A0(n666), .A1(n165), .B0(n1072), .C0(n1148), .Y(n1145) );
  AOI2BB2X1 U1252 ( .B0(n694), .B1(n1429), .A0N(n702), .A1N(n365), .Y(n1148)
         );
  MXI2X1 U1253 ( .A(n972), .B(n245), .S0(n1124), .Y(n1837) );
  OAI31XL U1254 ( .A0(n1149), .A1(n1150), .A2(n1151), .B0(n1116), .Y(n972) );
  OAI22XL U1255 ( .A0(n683), .A1(n47), .B0(n676), .B1(n228), .Y(n1151) );
  OAI22XL U1256 ( .A0(n689), .A1(n48), .B0(n671), .B1(n229), .Y(n1150) );
  OAI211X1 U1257 ( .A0(n666), .A1(n166), .B0(n1073), .C0(n1152), .Y(n1149) );
  AOI2BB2X1 U1258 ( .B0(n694), .B1(n1428), .A0N(n702), .A1N(n366), .Y(n1152)
         );
  MXI2X1 U1259 ( .A(n973), .B(n247), .S0(n1124), .Y(n1836) );
  OA21XL U1260 ( .A0(n697), .A1(n1118), .B0(n1075), .Y(n1124) );
  OAI31XL U1261 ( .A0(n1153), .A1(n1154), .A2(n1155), .B0(n1122), .Y(n973) );
  OAI22XL U1262 ( .A0(n683), .A1(n49), .B0(n676), .B1(n230), .Y(n1155) );
  OAI22XL U1263 ( .A0(n689), .A1(n50), .B0(n672), .B1(n231), .Y(n1154) );
  OAI211X1 U1264 ( .A0(n666), .A1(n167), .B0(n1076), .C0(n1156), .Y(n1153) );
  AOI2BB2X1 U1265 ( .B0(n694), .B1(n1427), .A0N(n702), .A1N(n367), .Y(n1156)
         );
  MXI2X1 U1266 ( .A(n975), .B(n249), .S0(n1157), .Y(n1835) );
  OAI31XL U1267 ( .A0(n1158), .A1(n1159), .A2(n1160), .B0(n1085), .Y(n975) );
  OAI22XL U1268 ( .A0(n683), .A1(n51), .B0(n676), .B1(n232), .Y(n1160) );
  OAI22XL U1269 ( .A0(n689), .A1(n52), .B0(n672), .B1(n233), .Y(n1159) );
  OAI211X1 U1270 ( .A0(n666), .A1(n168), .B0(n1067), .C0(n1161), .Y(n1158) );
  AOI2BB2X1 U1271 ( .B0(n694), .B1(n1426), .A0N(n702), .A1N(n320), .Y(n1161)
         );
  MXI2X1 U1272 ( .A(n977), .B(n251), .S0(n1157), .Y(n1834) );
  OAI31XL U1273 ( .A0(n1162), .A1(n1163), .A2(n1164), .B0(n1091), .Y(n977) );
  OAI22XL U1274 ( .A0(n683), .A1(n53), .B0(n676), .B1(n234), .Y(n1164) );
  OAI22XL U1275 ( .A0(n689), .A1(n54), .B0(n672), .B1(n235), .Y(n1163) );
  OAI211X1 U1276 ( .A0(n666), .A1(n169), .B0(n1068), .C0(n1165), .Y(n1162) );
  AOI2BB2X1 U1277 ( .B0(n694), .B1(n1425), .A0N(n702), .A1N(n321), .Y(n1165)
         );
  MXI2X1 U1278 ( .A(n978), .B(n253), .S0(n1157), .Y(n1833) );
  OAI31XL U1279 ( .A0(n1166), .A1(n1167), .A2(n1168), .B0(n1096), .Y(n978) );
  OAI22XL U1280 ( .A0(n683), .A1(n55), .B0(n676), .B1(n236), .Y(n1168) );
  OAI22XL U1281 ( .A0(n689), .A1(n56), .B0(n672), .B1(n237), .Y(n1167) );
  OAI211X1 U1282 ( .A0(n666), .A1(n170), .B0(n1069), .C0(n1169), .Y(n1166) );
  AOI2BB2X1 U1283 ( .B0(n694), .B1(n1424), .A0N(n702), .A1N(n322), .Y(n1169)
         );
  MXI2X1 U1284 ( .A(n979), .B(n255), .S0(n1157), .Y(n1832) );
  OAI31XL U1285 ( .A0(n1170), .A1(n1171), .A2(n1172), .B0(n1101), .Y(n979) );
  OAI22XL U1286 ( .A0(n683), .A1(n57), .B0(n676), .B1(n238), .Y(n1172) );
  OAI22XL U1287 ( .A0(n689), .A1(n58), .B0(n672), .B1(n239), .Y(n1171) );
  OAI211X1 U1288 ( .A0(n666), .A1(n171), .B0(n1070), .C0(n1173), .Y(n1170) );
  AOI2BB2X1 U1289 ( .B0(n694), .B1(n1423), .A0N(n702), .A1N(n323), .Y(n1173)
         );
  MXI2X1 U1290 ( .A(n980), .B(n257), .S0(n1157), .Y(n1831) );
  OAI31XL U1291 ( .A0(n1174), .A1(n1175), .A2(n1176), .B0(n1106), .Y(n980) );
  OAI22XL U1292 ( .A0(n684), .A1(n59), .B0(n676), .B1(n240), .Y(n1176) );
  OAI22XL U1293 ( .A0(n689), .A1(n60), .B0(n672), .B1(n241), .Y(n1175) );
  OAI211X1 U1294 ( .A0(n666), .A1(n172), .B0(n1071), .C0(n1177), .Y(n1174) );
  AOI2BB2X1 U1295 ( .B0(n694), .B1(n1422), .A0N(n702), .A1N(n324), .Y(n1177)
         );
  MXI2X1 U1296 ( .A(n981), .B(n259), .S0(n1157), .Y(n1830) );
  OAI31XL U1297 ( .A0(n1178), .A1(n1179), .A2(n1180), .B0(n1111), .Y(n981) );
  OAI22XL U1298 ( .A0(n684), .A1(n61), .B0(n676), .B1(n242), .Y(n1180) );
  OAI22XL U1299 ( .A0(n689), .A1(n62), .B0(n672), .B1(n243), .Y(n1179) );
  OAI211X1 U1300 ( .A0(n666), .A1(n173), .B0(n1072), .C0(n1181), .Y(n1178) );
  AOI2BB2X1 U1301 ( .B0(n694), .B1(n1421), .A0N(n702), .A1N(n325), .Y(n1181)
         );
  MXI2X1 U1302 ( .A(n982), .B(n261), .S0(n1157), .Y(n1829) );
  OAI31XL U1303 ( .A0(n1182), .A1(n1183), .A2(n1184), .B0(n1116), .Y(n982) );
  OAI22XL U1304 ( .A0(n684), .A1(n63), .B0(n676), .B1(n244), .Y(n1184) );
  OAI22XL U1305 ( .A0(n689), .A1(n64), .B0(n672), .B1(n245), .Y(n1183) );
  OAI211X1 U1306 ( .A0(n666), .A1(n174), .B0(n1073), .C0(n1185), .Y(n1182) );
  AOI2BB2X1 U1307 ( .B0(n694), .B1(n1420), .A0N(n702), .A1N(n326), .Y(n1185)
         );
  MXI2X1 U1308 ( .A(n983), .B(n263), .S0(n1157), .Y(n1828) );
  OA21XL U1309 ( .A0(n679), .A1(n1118), .B0(n1075), .Y(n1157) );
  OAI31XL U1310 ( .A0(n1186), .A1(n1187), .A2(n1188), .B0(n1122), .Y(n983) );
  OAI22XL U1311 ( .A0(n684), .A1(n65), .B0(n676), .B1(n246), .Y(n1188) );
  OAI22XL U1312 ( .A0(n689), .A1(n66), .B0(n672), .B1(n247), .Y(n1187) );
  OAI211X1 U1313 ( .A0(n666), .A1(n175), .B0(n1076), .C0(n1189), .Y(n1186) );
  AOI2BB2X1 U1314 ( .B0(n694), .B1(n1419), .A0N(n702), .A1N(n327), .Y(n1189)
         );
  MXI2X1 U1315 ( .A(n985), .B(n265), .S0(n1190), .Y(n1827) );
  OAI31XL U1316 ( .A0(n1191), .A1(n1192), .A2(n1193), .B0(n1085), .Y(n985) );
  OAI22XL U1317 ( .A0(n684), .A1(n67), .B0(n676), .B1(n248), .Y(n1193) );
  OAI22XL U1318 ( .A0(n689), .A1(n68), .B0(n672), .B1(n249), .Y(n1192) );
  OAI211X1 U1319 ( .A0(n667), .A1(n192), .B0(n1067), .C0(n1194), .Y(n1191) );
  AOI2BB2X1 U1320 ( .B0(n694), .B1(n1418), .A0N(n702), .A1N(n328), .Y(n1194)
         );
  MXI2X1 U1321 ( .A(n987), .B(n267), .S0(n1190), .Y(n1826) );
  OAI31XL U1322 ( .A0(n1195), .A1(n1196), .A2(n1197), .B0(n1091), .Y(n987) );
  OAI22XL U1323 ( .A0(n684), .A1(n69), .B0(n677), .B1(n250), .Y(n1197) );
  OAI22XL U1324 ( .A0(n689), .A1(n70), .B0(n672), .B1(n251), .Y(n1196) );
  OAI211X1 U1325 ( .A0(n667), .A1(n193), .B0(n1068), .C0(n1198), .Y(n1195) );
  AOI2BB2X1 U1326 ( .B0(n694), .B1(n1417), .A0N(n701), .A1N(n329), .Y(n1198)
         );
  MXI2X1 U1327 ( .A(n988), .B(n269), .S0(n1190), .Y(n1825) );
  OAI31XL U1328 ( .A0(n1199), .A1(n1200), .A2(n1201), .B0(n1096), .Y(n988) );
  OAI22XL U1329 ( .A0(n684), .A1(n71), .B0(n676), .B1(n252), .Y(n1201) );
  OAI22XL U1330 ( .A0(n689), .A1(n72), .B0(n672), .B1(n253), .Y(n1200) );
  OAI211X1 U1331 ( .A0(n667), .A1(n194), .B0(n1069), .C0(n1202), .Y(n1199) );
  AOI2BB2X1 U1332 ( .B0(n694), .B1(n1416), .A0N(n701), .A1N(n330), .Y(n1202)
         );
  MXI2X1 U1333 ( .A(n989), .B(n271), .S0(n1190), .Y(n1824) );
  OAI31XL U1334 ( .A0(n1203), .A1(n1204), .A2(n1205), .B0(n1101), .Y(n989) );
  OAI22XL U1335 ( .A0(n684), .A1(n73), .B0(n677), .B1(n254), .Y(n1205) );
  OAI22XL U1336 ( .A0(n689), .A1(n74), .B0(n672), .B1(n255), .Y(n1204) );
  OAI211X1 U1337 ( .A0(n667), .A1(n195), .B0(n1070), .C0(n1206), .Y(n1203) );
  AOI2BB2X1 U1338 ( .B0(n694), .B1(n1415), .A0N(n701), .A1N(n331), .Y(n1206)
         );
  MXI2X1 U1339 ( .A(n990), .B(n273), .S0(n1190), .Y(n1823) );
  OAI31XL U1340 ( .A0(n1207), .A1(n1208), .A2(n1209), .B0(n1106), .Y(n990) );
  OAI22XL U1341 ( .A0(n684), .A1(n75), .B0(n677), .B1(n256), .Y(n1209) );
  OAI22XL U1342 ( .A0(n689), .A1(n76), .B0(n672), .B1(n257), .Y(n1208) );
  OAI211X1 U1343 ( .A0(n667), .A1(n196), .B0(n1071), .C0(n1210), .Y(n1207) );
  AOI2BB2X1 U1344 ( .B0(n694), .B1(n1414), .A0N(n701), .A1N(n332), .Y(n1210)
         );
  MXI2X1 U1345 ( .A(n991), .B(n275), .S0(n1190), .Y(n1822) );
  OAI31XL U1346 ( .A0(n1211), .A1(n1212), .A2(n1213), .B0(n1111), .Y(n991) );
  OAI22XL U1347 ( .A0(n684), .A1(n77), .B0(n677), .B1(n258), .Y(n1213) );
  OAI22XL U1348 ( .A0(n689), .A1(n78), .B0(n672), .B1(n259), .Y(n1212) );
  OAI211X1 U1349 ( .A0(n667), .A1(n197), .B0(n1072), .C0(n1214), .Y(n1211) );
  AOI2BB2X1 U1350 ( .B0(n694), .B1(n1413), .A0N(n701), .A1N(n333), .Y(n1214)
         );
  MXI2X1 U1351 ( .A(n992), .B(n277), .S0(n1190), .Y(n1821) );
  OAI31XL U1352 ( .A0(n1215), .A1(n1216), .A2(n1217), .B0(n1116), .Y(n992) );
  OAI22XL U1353 ( .A0(n684), .A1(n79), .B0(n677), .B1(n260), .Y(n1217) );
  OAI22XL U1354 ( .A0(n689), .A1(n80), .B0(n672), .B1(n261), .Y(n1216) );
  OAI211X1 U1355 ( .A0(n667), .A1(n198), .B0(n1073), .C0(n1218), .Y(n1215) );
  AOI2BB2X1 U1356 ( .B0(n694), .B1(n1412), .A0N(n701), .A1N(n334), .Y(n1218)
         );
  MXI2X1 U1357 ( .A(n993), .B(n279), .S0(n1190), .Y(n1820) );
  OA21XL U1358 ( .A0(n686), .A1(n1118), .B0(n1075), .Y(n1190) );
  OAI31XL U1359 ( .A0(n1219), .A1(n1220), .A2(n1221), .B0(n1122), .Y(n993) );
  OAI22XL U1360 ( .A0(n684), .A1(n81), .B0(n677), .B1(n262), .Y(n1221) );
  OAI22XL U1361 ( .A0(n689), .A1(n82), .B0(n672), .B1(n263), .Y(n1220) );
  OAI211X1 U1362 ( .A0(n667), .A1(n199), .B0(n1076), .C0(n1222), .Y(n1219) );
  AOI2BB2X1 U1363 ( .B0(n694), .B1(n1411), .A0N(n701), .A1N(n335), .Y(n1222)
         );
  MXI2X1 U1364 ( .A(n994), .B(n281), .S0(n1223), .Y(n1819) );
  OAI31XL U1365 ( .A0(n1224), .A1(n1225), .A2(n1226), .B0(n1085), .Y(n994) );
  OAI22XL U1366 ( .A0(n684), .A1(n83), .B0(n677), .B1(n264), .Y(n1226) );
  OAI22XL U1367 ( .A0(n689), .A1(n84), .B0(n672), .B1(n265), .Y(n1225) );
  OAI211X1 U1368 ( .A0(n667), .A1(n176), .B0(n1067), .C0(n1227), .Y(n1224) );
  AOI2BB2X1 U1369 ( .B0(n694), .B1(n1410), .A0N(n701), .A1N(n336), .Y(n1227)
         );
  MXI2X1 U1370 ( .A(n996), .B(n283), .S0(n1223), .Y(n1818) );
  OAI31XL U1371 ( .A0(n1228), .A1(n1229), .A2(n1230), .B0(n1091), .Y(n996) );
  OAI22XL U1372 ( .A0(n685), .A1(n85), .B0(n677), .B1(n266), .Y(n1230) );
  OAI22XL U1373 ( .A0(n689), .A1(n86), .B0(n673), .B1(n267), .Y(n1229) );
  OAI211X1 U1374 ( .A0(n667), .A1(n177), .B0(n1068), .C0(n1231), .Y(n1228) );
  AOI2BB2X1 U1375 ( .B0(n693), .B1(n1409), .A0N(n701), .A1N(n337), .Y(n1231)
         );
  MXI2X1 U1376 ( .A(n997), .B(n285), .S0(n1223), .Y(n1817) );
  OAI31XL U1377 ( .A0(n1232), .A1(n1233), .A2(n1234), .B0(n1096), .Y(n997) );
  OAI22XL U1378 ( .A0(n685), .A1(n87), .B0(n677), .B1(n268), .Y(n1234) );
  OAI22XL U1379 ( .A0(n689), .A1(n88), .B0(n673), .B1(n269), .Y(n1233) );
  OAI211X1 U1380 ( .A0(n667), .A1(n178), .B0(n1069), .C0(n1235), .Y(n1232) );
  AOI2BB2X1 U1381 ( .B0(n693), .B1(n1408), .A0N(n701), .A1N(n338), .Y(n1235)
         );
  MXI2X1 U1382 ( .A(n998), .B(n287), .S0(n1223), .Y(n1816) );
  OAI31XL U1383 ( .A0(n1236), .A1(n1237), .A2(n1238), .B0(n1101), .Y(n998) );
  OAI22XL U1384 ( .A0(n685), .A1(n89), .B0(n677), .B1(n270), .Y(n1238) );
  OAI22XL U1385 ( .A0(n689), .A1(n90), .B0(n673), .B1(n271), .Y(n1237) );
  OAI211X1 U1386 ( .A0(n667), .A1(n179), .B0(n1070), .C0(n1239), .Y(n1236) );
  AOI2BB2X1 U1387 ( .B0(n693), .B1(n1407), .A0N(n701), .A1N(n339), .Y(n1239)
         );
  MXI2X1 U1388 ( .A(n999), .B(n289), .S0(n1223), .Y(n1815) );
  OAI31XL U1389 ( .A0(n1240), .A1(n1241), .A2(n1242), .B0(n1106), .Y(n999) );
  OAI22XL U1390 ( .A0(n685), .A1(n91), .B0(n677), .B1(n272), .Y(n1242) );
  OAI22XL U1391 ( .A0(n689), .A1(n92), .B0(n673), .B1(n273), .Y(n1241) );
  OAI211X1 U1392 ( .A0(n666), .A1(n180), .B0(n1071), .C0(n1243), .Y(n1240) );
  AOI2BB2X1 U1393 ( .B0(n693), .B1(n1406), .A0N(n701), .A1N(n340), .Y(n1243)
         );
  MXI2X1 U1394 ( .A(n1000), .B(n291), .S0(n1223), .Y(n1814) );
  OAI31XL U1395 ( .A0(n1244), .A1(n1245), .A2(n1246), .B0(n1111), .Y(n1000) );
  OAI22XL U1396 ( .A0(n685), .A1(n93), .B0(n677), .B1(n274), .Y(n1246) );
  OAI22XL U1397 ( .A0(n689), .A1(n94), .B0(n673), .B1(n275), .Y(n1245) );
  OAI211X1 U1398 ( .A0(n667), .A1(n181), .B0(n1072), .C0(n1247), .Y(n1244) );
  AOI2BB2X1 U1399 ( .B0(n693), .B1(n1405), .A0N(n701), .A1N(n341), .Y(n1247)
         );
  MXI2X1 U1400 ( .A(n1001), .B(n293), .S0(n1223), .Y(n1813) );
  OAI31XL U1401 ( .A0(n1248), .A1(n1249), .A2(n1250), .B0(n1116), .Y(n1001) );
  OAI22XL U1402 ( .A0(n685), .A1(n95), .B0(n678), .B1(n276), .Y(n1250) );
  OAI22XL U1403 ( .A0(n689), .A1(n96), .B0(n673), .B1(n277), .Y(n1249) );
  OAI211X1 U1404 ( .A0(n665), .A1(n182), .B0(n1073), .C0(n1251), .Y(n1248) );
  AOI2BB2X1 U1405 ( .B0(n693), .B1(n1404), .A0N(n701), .A1N(n342), .Y(n1251)
         );
  MXI2X1 U1406 ( .A(n1002), .B(n295), .S0(n1223), .Y(n1812) );
  OA21XL U1407 ( .A0(n690), .A1(n1118), .B0(n1075), .Y(n1223) );
  NAND2X1 U1408 ( .A(n662), .B(n1080), .Y(n1075) );
  OAI31XL U1409 ( .A0(n1252), .A1(n1253), .A2(n1254), .B0(n1122), .Y(n1002) );
  OAI22XL U1410 ( .A0(n685), .A1(n97), .B0(n678), .B1(n278), .Y(n1254) );
  OAI22XL U1411 ( .A0(n689), .A1(n98), .B0(n673), .B1(n279), .Y(n1253) );
  OAI211X1 U1412 ( .A0(n666), .A1(n183), .B0(n1076), .C0(n1255), .Y(n1252) );
  AOI2BB2X1 U1413 ( .B0(n693), .B1(n1403), .A0N(n701), .A1N(n343), .Y(n1255)
         );
  MXI2X1 U1414 ( .A(n123), .B(n1004), .S0(n1256), .Y(n1811) );
  OAI31XL U1415 ( .A0(n1257), .A1(n1258), .A2(n1259), .B0(n1085), .Y(n1004) );
  NAND2X1 U1416 ( .A(n1067), .B(n851), .Y(n1085) );
  OAI22XL U1417 ( .A0(n685), .A1(n99), .B0(n678), .B1(n280), .Y(n1259) );
  OAI22XL U1418 ( .A0(n689), .A1(n100), .B0(n673), .B1(n281), .Y(n1258) );
  OAI211X1 U1419 ( .A0(n667), .A1(n184), .B0(n1067), .C0(n1260), .Y(n1257) );
  AOI2BB2X1 U1420 ( .B0(n693), .B1(n1402), .A0N(n701), .A1N(n344), .Y(n1260)
         );
  NAND2X1 U1421 ( .A(n1261), .B(Q[0]), .Y(n1067) );
  MXI2X1 U1422 ( .A(n124), .B(n1006), .S0(n1256), .Y(n1810) );
  OAI31XL U1423 ( .A0(n1262), .A1(n1263), .A2(n1264), .B0(n1091), .Y(n1006) );
  NAND2X1 U1424 ( .A(n1068), .B(n851), .Y(n1091) );
  OAI22XL U1425 ( .A0(n685), .A1(n101), .B0(n678), .B1(n282), .Y(n1264) );
  OAI22XL U1426 ( .A0(n689), .A1(n102), .B0(n673), .B1(n283), .Y(n1263) );
  OAI211X1 U1427 ( .A0(n665), .A1(n185), .B0(n1068), .C0(n1265), .Y(n1262) );
  AOI2BB2X1 U1428 ( .B0(n693), .B1(n1401), .A0N(n701), .A1N(n345), .Y(n1265)
         );
  NAND2X1 U1429 ( .A(n1261), .B(Q[1]), .Y(n1068) );
  MXI2X1 U1430 ( .A(n125), .B(n1007), .S0(n1256), .Y(n1809) );
  OAI31XL U1431 ( .A0(n1266), .A1(n1267), .A2(n1268), .B0(n1096), .Y(n1007) );
  NAND2X1 U1432 ( .A(n1069), .B(n851), .Y(n1096) );
  OAI22XL U1433 ( .A0(n685), .A1(n103), .B0(n678), .B1(n284), .Y(n1268) );
  OAI22XL U1434 ( .A0(n689), .A1(n104), .B0(n673), .B1(n285), .Y(n1267) );
  OAI211X1 U1435 ( .A0(n666), .A1(n186), .B0(n1069), .C0(n1269), .Y(n1266) );
  AOI2BB2X1 U1436 ( .B0(n693), .B1(n1400), .A0N(n700), .A1N(n346), .Y(n1269)
         );
  NAND2X1 U1437 ( .A(n1261), .B(Q[2]), .Y(n1069) );
  MXI2X1 U1438 ( .A(n126), .B(n1008), .S0(n1256), .Y(n1808) );
  OAI31XL U1439 ( .A0(n1270), .A1(n1271), .A2(n1272), .B0(n1101), .Y(n1008) );
  NAND2X1 U1440 ( .A(n1070), .B(n851), .Y(n1101) );
  OAI22XL U1441 ( .A0(n685), .A1(n105), .B0(n677), .B1(n286), .Y(n1272) );
  OAI22XL U1442 ( .A0(n690), .A1(n106), .B0(n673), .B1(n287), .Y(n1271) );
  OAI211X1 U1443 ( .A0(n667), .A1(n187), .B0(n1070), .C0(n1273), .Y(n1270) );
  AOI2BB2X1 U1444 ( .B0(n693), .B1(n1399), .A0N(n700), .A1N(n347), .Y(n1273)
         );
  NAND2X1 U1445 ( .A(n1261), .B(Q[3]), .Y(n1070) );
  MXI2X1 U1446 ( .A(n127), .B(n1009), .S0(n1256), .Y(n1807) );
  OAI31XL U1447 ( .A0(n1274), .A1(n1275), .A2(n1276), .B0(n1106), .Y(n1009) );
  NAND2X1 U1448 ( .A(n1071), .B(n851), .Y(n1106) );
  OAI22XL U1449 ( .A0(n685), .A1(n107), .B0(n678), .B1(n288), .Y(n1276) );
  OAI22XL U1450 ( .A0(n690), .A1(n108), .B0(n673), .B1(n289), .Y(n1275) );
  OAI211X1 U1451 ( .A0(n665), .A1(n188), .B0(n1071), .C0(n1277), .Y(n1274) );
  AOI2BB2X1 U1452 ( .B0(n693), .B1(n1398), .A0N(n700), .A1N(n348), .Y(n1277)
         );
  NAND2X1 U1453 ( .A(n1261), .B(Q[4]), .Y(n1071) );
  MXI2X1 U1454 ( .A(n128), .B(n1010), .S0(n1256), .Y(n1806) );
  OAI31XL U1455 ( .A0(n1278), .A1(n1279), .A2(n1280), .B0(n1111), .Y(n1010) );
  NAND2X1 U1456 ( .A(n1072), .B(n851), .Y(n1111) );
  OAI22XL U1457 ( .A0(n685), .A1(n109), .B0(n678), .B1(n290), .Y(n1280) );
  OAI22XL U1458 ( .A0(n690), .A1(n110), .B0(n673), .B1(n291), .Y(n1279) );
  OAI211X1 U1459 ( .A0(n666), .A1(n189), .B0(n1072), .C0(n1281), .Y(n1278) );
  AOI2BB2X1 U1460 ( .B0(n693), .B1(n1397), .A0N(n700), .A1N(n349), .Y(n1281)
         );
  NAND2X1 U1461 ( .A(n1261), .B(Q[5]), .Y(n1072) );
  MXI2X1 U1462 ( .A(n129), .B(n1011), .S0(n1256), .Y(n1805) );
  OAI31XL U1463 ( .A0(n1282), .A1(n1283), .A2(n1284), .B0(n1116), .Y(n1011) );
  NAND2X1 U1464 ( .A(n1073), .B(n851), .Y(n1116) );
  OAI22XL U1465 ( .A0(n685), .A1(n111), .B0(n678), .B1(n292), .Y(n1284) );
  OAI22XL U1466 ( .A0(n690), .A1(n112), .B0(n673), .B1(n293), .Y(n1283) );
  OAI211X1 U1467 ( .A0(n667), .A1(n190), .B0(n1073), .C0(n1285), .Y(n1282) );
  AOI2BB2X1 U1468 ( .B0(n693), .B1(n1396), .A0N(n700), .A1N(n350), .Y(n1285)
         );
  NAND2X1 U1469 ( .A(n1261), .B(Q[6]), .Y(n1073) );
  MXI2X1 U1470 ( .A(n130), .B(n1012), .S0(n1256), .Y(n1804) );
  AOI21X1 U1471 ( .A0(n851), .A1(n1118), .B0(n671), .Y(n1256) );
  NAND2X1 U1472 ( .A(n926), .B(n867), .Y(n1118) );
  OAI31XL U1473 ( .A0(n1286), .A1(n1287), .A2(n1288), .B0(n1122), .Y(n1012) );
  NAND2X1 U1474 ( .A(n1076), .B(n851), .Y(n1122) );
  OAI22XL U1475 ( .A0(n686), .A1(n113), .B0(n678), .B1(n294), .Y(n1288) );
  OAI22XL U1476 ( .A0(n689), .A1(n114), .B0(n673), .B1(n295), .Y(n1287) );
  OAI211X1 U1477 ( .A0(n666), .A1(n191), .B0(n1076), .C0(n1289), .Y(n1286) );
  AOI2BB2X1 U1478 ( .B0(n693), .B1(n1395), .A0N(n700), .A1N(n351), .Y(n1289)
         );
  NAND2X1 U1479 ( .A(n1261), .B(Q[7]), .Y(n1076) );
  AND2X1 U1480 ( .A(N1916), .B(n926), .Y(n1261) );
  CLKINVX1 U1481 ( .A(n850), .Y(n926) );
  NAND3X1 U1482 ( .A(rc[4]), .B(n1290), .C(rc[5]), .Y(n933) );
  NAND3BX1 U1483 ( .AN(n1291), .B(n140), .C(n1), .Y(n1290) );
  OAI211X1 U1484 ( .A0(n1394), .A1(n868), .B0(n1292), .C0(n928), .Y(n1803) );
  OAI31XL U1485 ( .A0(n1293), .A1(n1294), .A2(n1295), .B0(n849), .Y(n1292) );
  OAI22XL U1486 ( .A0(n678), .A1(n115), .B0(n690), .B1(n296), .Y(n1295) );
  OAI22XL U1487 ( .A0(n673), .A1(n123), .B0(n667), .B1(n297), .Y(n1294) );
  OAI222XL U1488 ( .A0(n700), .A1(n131), .B0(n682), .B1(n5), .C0(n697), .C1(
        n200), .Y(n1293) );
  OAI211X1 U1489 ( .A0(n1393), .A1(n868), .B0(n1296), .C0(n928), .Y(n1802) );
  OAI31XL U1490 ( .A0(n1297), .A1(n1298), .A2(n1299), .B0(n663), .Y(n1296) );
  OAI22XL U1491 ( .A0(n678), .A1(n116), .B0(n690), .B1(n298), .Y(n1299) );
  OAI22XL U1492 ( .A0(n673), .A1(n124), .B0(n665), .B1(n299), .Y(n1298) );
  OAI222XL U1493 ( .A0(n700), .A1(n132), .B0(n682), .B1(n6), .C0(n697), .C1(
        n201), .Y(n1297) );
  OAI211X1 U1494 ( .A0(n1392), .A1(n868), .B0(n1300), .C0(n928), .Y(n1801) );
  OAI31XL U1495 ( .A0(n1301), .A1(n1302), .A2(n1303), .B0(n662), .Y(n1300) );
  OAI22XL U1496 ( .A0(n678), .A1(n117), .B0(n690), .B1(n300), .Y(n1303) );
  OAI22XL U1497 ( .A0(n673), .A1(n125), .B0(n666), .B1(n301), .Y(n1302) );
  OAI222XL U1498 ( .A0(n700), .A1(n133), .B0(n682), .B1(n7), .C0(n696), .C1(
        n202), .Y(n1301) );
  OAI211X1 U1499 ( .A0(n1391), .A1(n868), .B0(n1304), .C0(n928), .Y(n1800) );
  OAI31XL U1500 ( .A0(n1305), .A1(n1306), .A2(n1307), .B0(n849), .Y(n1304) );
  OAI22XL U1501 ( .A0(n679), .A1(n118), .B0(n690), .B1(n302), .Y(n1307) );
  OAI22XL U1502 ( .A0(n674), .A1(n126), .B0(n667), .B1(n303), .Y(n1306) );
  OAI222XL U1503 ( .A0(n700), .A1(n134), .B0(n682), .B1(n8), .C0(n696), .C1(
        n203), .Y(n1305) );
  OAI211X1 U1504 ( .A0(n1390), .A1(n868), .B0(n1308), .C0(n928), .Y(n1799) );
  OAI31XL U1505 ( .A0(n1309), .A1(n1310), .A2(n1311), .B0(n663), .Y(n1308) );
  OAI22XL U1506 ( .A0(n679), .A1(n119), .B0(n690), .B1(n304), .Y(n1311) );
  OAI22XL U1507 ( .A0(n674), .A1(n127), .B0(n667), .B1(n305), .Y(n1310) );
  OAI222XL U1508 ( .A0(n700), .A1(n135), .B0(n682), .B1(n9), .C0(n696), .C1(
        n204), .Y(n1309) );
  OAI211X1 U1509 ( .A0(n1389), .A1(n868), .B0(n1312), .C0(n928), .Y(n1798) );
  OAI31XL U1510 ( .A0(n1313), .A1(n1314), .A2(n1315), .B0(n662), .Y(n1312) );
  OAI22XL U1511 ( .A0(n679), .A1(n120), .B0(n690), .B1(n306), .Y(n1315) );
  OAI22XL U1512 ( .A0(n674), .A1(n128), .B0(n665), .B1(n307), .Y(n1314) );
  OAI222XL U1513 ( .A0(n700), .A1(n136), .B0(n682), .B1(n10), .C0(n695), .C1(
        n205), .Y(n1313) );
  OAI211X1 U1514 ( .A0(n1388), .A1(n868), .B0(n1316), .C0(n928), .Y(n1797) );
  OAI31XL U1515 ( .A0(n1317), .A1(n1318), .A2(n1319), .B0(n849), .Y(n1316) );
  OAI22XL U1516 ( .A0(n679), .A1(n121), .B0(n690), .B1(n308), .Y(n1319) );
  OAI22XL U1517 ( .A0(n674), .A1(n129), .B0(n665), .B1(n309), .Y(n1318) );
  OAI222XL U1518 ( .A0(n700), .A1(n137), .B0(n682), .B1(n11), .C0(n695), .C1(
        n206), .Y(n1317) );
  OAI211X1 U1519 ( .A0(n1387), .A1(n868), .B0(n1320), .C0(n928), .Y(n1796) );
  NAND2X1 U1520 ( .A(n888), .B(n853), .Y(n798) );
  NOR3X1 U1521 ( .A(n147), .B(state[1]), .C(n18), .Y(n853) );
  AOI211X1 U1522 ( .A0(n1), .A1(n865), .B0(n145), .C0(n14), .Y(n888) );
  NAND3X1 U1523 ( .A(n139), .B(n140), .C(n867), .Y(n932) );
  OAI31XL U1524 ( .A0(n1321), .A1(n1322), .A2(n1323), .B0(n663), .Y(n1320) );
  NOR2X1 U1525 ( .A(n795), .B(n905), .Y(n849) );
  OAI22XL U1526 ( .A0(n678), .A1(n122), .B0(n690), .B1(n310), .Y(n1323) );
  CLKINVX1 U1527 ( .A(n1036), .Y(n1003) );
  OAI22XL U1528 ( .A0(n674), .A1(n130), .B0(n667), .B1(n311), .Y(n1322) );
  CLKINVX1 U1529 ( .A(n1080), .Y(n953) );
  OAI222XL U1530 ( .A0(n700), .A1(n138), .B0(n682), .B1(n12), .C0(n695), .C1(
        n207), .Y(n1321) );
  CLKINVX1 U1531 ( .A(n865), .Y(n1087) );
  CLKINVX1 U1532 ( .A(n908), .Y(n874) );
  NOR3X1 U1533 ( .A(state[0]), .B(state[2]), .C(n3), .Y(n908) );
  CLKINVX1 U1534 ( .A(n793), .Y(n846) );
  NOR2X1 U1535 ( .A(n795), .B(n907), .Y(n793) );
  CLKINVX1 U1536 ( .A(n905), .Y(n907) );
  AOI31X1 U1537 ( .A0(n865), .A1(n14), .A2(n145), .B0(n867), .Y(n905) );
  NOR3X1 U1538 ( .A(rc[4]), .B(rc[5]), .C(rc[3]), .Y(n867) );
  CLKINVX1 U1539 ( .A(n806), .Y(n795) );
  NOR3X1 U1540 ( .A(n147), .B(state[2]), .C(n3), .Y(n806) );
  AND3X1 U1541 ( .A(n872), .B(n790), .C(n852), .Y(n904) );
  OA21XL U1542 ( .A0(n18), .A1(n3), .B0(n889), .Y(n852) );
  CLKINVX1 U1543 ( .A(n803), .Y(n889) );
  NOR3X1 U1544 ( .A(state[1]), .B(state[2]), .C(state[0]), .Y(n803) );
  CLKINVX1 U1545 ( .A(n890), .Y(n790) );
  NOR3X1 U1546 ( .A(state[0]), .B(state[1]), .C(n18), .Y(n890) );
  NAND3X1 U1547 ( .A(n3), .B(n18), .C(state[0]), .Y(n872) );
  NOR2BX1 U1548 ( .AN(n1324), .B(n1325), .Y(N2524) );
  NOR2X1 U1549 ( .A(n1325), .B(n1326), .Y(N2519) );
  NOR2X1 U1550 ( .A(n1325), .B(n1327), .Y(N2514) );
  NOR2X1 U1551 ( .A(n1325), .B(n1328), .Y(N2509) );
  NOR2X1 U1552 ( .A(n1325), .B(n1329), .Y(N2504) );
  NOR2X1 U1553 ( .A(n1325), .B(n1330), .Y(N2499) );
  NOR2X1 U1554 ( .A(n1325), .B(n1331), .Y(N2494) );
  XOR2X1 U1555 ( .A(\r1094/A[7] ), .B(n1332), .Y(n1325) );
  NOR4BX1 U1556 ( .AN(n1333), .B(\r1094/A[6] ), .C(\r1094/A[4] ), .D(
        \r1094/A[5] ), .Y(n1332) );
  AOI211X1 U1557 ( .A0(\r1094/A[1] ), .A1(n17), .B0(\r1094/A[3] ), .C0(
        \r1094/A[2] ), .Y(n1333) );
  NOR2BX1 U1558 ( .AN(n1324), .B(n1334), .Y(N2489) );
  NOR2X1 U1559 ( .A(n1334), .B(n1326), .Y(N2484) );
  NOR2X1 U1560 ( .A(n1334), .B(n1327), .Y(N2479) );
  NOR2X1 U1561 ( .A(n1334), .B(n1328), .Y(N2474) );
  NOR2X1 U1562 ( .A(n1334), .B(n1329), .Y(N2469) );
  NOR2X1 U1563 ( .A(n1334), .B(n1330), .Y(N2464) );
  NOR2X1 U1564 ( .A(n1334), .B(n1331), .Y(N2459) );
  XOR2X1 U1565 ( .A(\r1092/A[7] ), .B(n1335), .Y(n1334) );
  NOR4BX1 U1566 ( .AN(n1336), .B(\r1092/A[6] ), .C(\r1092/A[4] ), .D(
        \r1092/A[5] ), .Y(n1335) );
  AOI211X1 U1567 ( .A0(n149), .A1(\r1084/A[0] ), .B0(\r1092/A[3] ), .C0(
        \r1092/A[2] ), .Y(n1336) );
  NOR2BX1 U1568 ( .AN(n1324), .B(n1337), .Y(N2454) );
  NOR2X1 U1569 ( .A(n1337), .B(n1326), .Y(N2449) );
  NOR2X1 U1570 ( .A(n1337), .B(n1327), .Y(N2444) );
  NOR2X1 U1571 ( .A(n1337), .B(n1328), .Y(N2439) );
  NOR2X1 U1572 ( .A(n1337), .B(n1329), .Y(N2434) );
  NOR2X1 U1573 ( .A(n1337), .B(n1330), .Y(N2429) );
  NOR2X1 U1574 ( .A(n1337), .B(n1331), .Y(N2424) );
  XOR2X1 U1575 ( .A(n1338), .B(n903), .Y(n1337) );
  CLKINVX1 U1576 ( .A(\r1090/A[7] ), .Y(n903) );
  NAND4X1 U1577 ( .A(n901), .B(n902), .C(n900), .D(n1339), .Y(n1338) );
  AOI211X1 U1578 ( .A0(\r1090/A[1] ), .A1(\r1090/A[0] ), .B0(\r1090/A[3] ), 
        .C0(\r1090/A[2] ), .Y(n1339) );
  CLKINVX1 U1579 ( .A(\r1090/A[4] ), .Y(n900) );
  CLKINVX1 U1580 ( .A(\r1090/A[6] ), .Y(n902) );
  CLKINVX1 U1581 ( .A(\r1090/A[5] ), .Y(n901) );
  NOR2BX1 U1582 ( .AN(n1324), .B(n1340), .Y(N2419) );
  NOR2X1 U1583 ( .A(n1340), .B(n1326), .Y(N2414) );
  NOR2X1 U1584 ( .A(n1340), .B(n1327), .Y(N2409) );
  NOR2X1 U1585 ( .A(n1340), .B(n1328), .Y(N2404) );
  NOR2X1 U1586 ( .A(n1340), .B(n1329), .Y(N2399) );
  NOR2X1 U1587 ( .A(n1340), .B(n1330), .Y(N2394) );
  NOR2X1 U1588 ( .A(n1340), .B(n1331), .Y(N2389) );
  XOR2X1 U1589 ( .A(n1341), .B(n144), .Y(n1340) );
  NAND4X1 U1590 ( .A(n143), .B(n4), .C(n16), .D(n1342), .Y(n1341) );
  AOI211X1 U1591 ( .A0(py[1]), .A1(\r1084/A[0] ), .B0(py[3]), .C0(py[2]), .Y(
        n1342) );
  NOR2BX1 U1592 ( .AN(n1324), .B(n1343), .Y(N2384) );
  NOR2X1 U1593 ( .A(n1343), .B(n1326), .Y(N2379) );
  NOR2X1 U1594 ( .A(n1343), .B(n1327), .Y(N2374) );
  NOR2X1 U1595 ( .A(n1343), .B(n1328), .Y(N2369) );
  NOR2X1 U1596 ( .A(n1343), .B(n1329), .Y(N2364) );
  NOR2X1 U1597 ( .A(n1343), .B(n1330), .Y(N2359) );
  NOR2X1 U1598 ( .A(n1343), .B(n1331), .Y(N2354) );
  XOR2X1 U1599 ( .A(\r1086/A[7] ), .B(n1344), .Y(n1343) );
  NOR4BX1 U1600 ( .AN(n1345), .B(\r1086/A[6] ), .C(\r1086/A[4] ), .D(
        \r1086/A[5] ), .Y(n1344) );
  AOI211X1 U1601 ( .A0(\r1086/A[1] ), .A1(n17), .B0(\r1086/A[3] ), .C0(
        \r1086/A[2] ), .Y(n1345) );
  NOR2BX1 U1602 ( .AN(n1324), .B(n1346), .Y(N2349) );
  NOR2X1 U1603 ( .A(n1346), .B(n1326), .Y(N2344) );
  NOR2X1 U1604 ( .A(n1346), .B(n1327), .Y(N2339) );
  NOR2X1 U1605 ( .A(n1346), .B(n1328), .Y(N2334) );
  NOR2X1 U1606 ( .A(n1346), .B(n1329), .Y(N2329) );
  NOR2X1 U1607 ( .A(n1346), .B(n1330), .Y(N2324) );
  NOR2X1 U1608 ( .A(n1346), .B(n1331), .Y(N2319) );
  XOR2X1 U1609 ( .A(\r1084/A[7] ), .B(n1347), .Y(n1346) );
  NOR4BX1 U1610 ( .AN(n1348), .B(\r1084/A[6] ), .C(\r1084/A[4] ), .D(
        \r1084/A[5] ), .Y(n1347) );
  AOI211X1 U1611 ( .A0(n149), .A1(\r1084/A[0] ), .B0(\r1084/A[3] ), .C0(
        \r1084/A[2] ), .Y(n1348) );
  NOR2BX1 U1612 ( .AN(n1324), .B(n1349), .Y(N2314) );
  MXI2X1 U1613 ( .A(n1350), .B(n1351), .S0(\dp_cluster_1/N1325 ), .Y(n1324) );
  NAND4X1 U1614 ( .A(n1352), .B(n1353), .C(n1354), .D(n1355), .Y(n1351) );
  NOR3X1 U1615 ( .A(\dp_cluster_1/N1322 ), .B(\dp_cluster_1/N1324 ), .C(
        \dp_cluster_1/N1323 ), .Y(n1355) );
  NOR4X1 U1616 ( .A(n1356), .B(\dp_cluster_1/N1322 ), .C(\dp_cluster_1/N1324 ), 
        .D(\dp_cluster_1/N1323 ), .Y(n1350) );
  NAND3X1 U1617 ( .A(n1352), .B(n1353), .C(n1354), .Y(n1356) );
  NAND2X1 U1618 ( .A(\dp_cluster_1/N1319 ), .B(n13), .Y(n1354) );
  CLKINVX1 U1619 ( .A(\dp_cluster_1/N1321 ), .Y(n1353) );
  CLKINVX1 U1620 ( .A(\dp_cluster_1/N1320 ), .Y(n1352) );
  NOR2X1 U1621 ( .A(n1349), .B(n1326), .Y(N2309) );
  XOR2X1 U1622 ( .A(\r1080/A[7] ), .B(n1357), .Y(n1326) );
  NOR4BX1 U1623 ( .AN(n1358), .B(\r1080/A[6] ), .C(\r1080/A[4] ), .D(
        \r1080/A[5] ), .Y(n1357) );
  AOI211X1 U1624 ( .A0(n141), .A1(n664), .B0(\r1080/A[3] ), .C0(\r1080/A[2] ), 
        .Y(n1358) );
  NOR2X1 U1625 ( .A(n1349), .B(n1327), .Y(N2304) );
  XNOR2X1 U1626 ( .A(n1359), .B(\r1078/A[7] ), .Y(n1327) );
  NAND4X1 U1627 ( .A(n911), .B(n912), .C(n910), .D(n1360), .Y(n1359) );
  AOI211X1 U1628 ( .A0(\r1078/A[0] ), .A1(\r1078/A[1] ), .B0(\r1078/A[3] ), 
        .C0(\r1078/A[2] ), .Y(n1360) );
  CLKINVX1 U1629 ( .A(\r1078/A[4] ), .Y(n910) );
  CLKINVX1 U1630 ( .A(\r1078/A[6] ), .Y(n912) );
  CLKINVX1 U1631 ( .A(\r1078/A[5] ), .Y(n911) );
  NOR2X1 U1632 ( .A(n1349), .B(n1328), .Y(N2299) );
  XNOR2X1 U1633 ( .A(n1361), .B(px[7]), .Y(n1328) );
  NAND4X1 U1634 ( .A(n142), .B(n2), .C(n15), .D(n1362), .Y(n1361) );
  AOI211X1 U1635 ( .A0(n664), .A1(px[1]), .B0(px[3]), .C0(px[2]), .Y(n1362) );
  NOR2X1 U1636 ( .A(n1349), .B(n1329), .Y(N2294) );
  XOR2X1 U1637 ( .A(\r1074/A[7] ), .B(n1363), .Y(n1329) );
  NOR4BX1 U1638 ( .AN(n1364), .B(\r1074/A[6] ), .C(\r1074/A[4] ), .D(
        \r1074/A[5] ), .Y(n1363) );
  AOI211X1 U1639 ( .A0(\r1074/A[1] ), .A1(n13), .B0(\r1074/A[3] ), .C0(
        \r1074/A[2] ), .Y(n1364) );
  NOR2X1 U1640 ( .A(n1349), .B(n1330), .Y(N2289) );
  XOR2X1 U1641 ( .A(\r1072/A[7] ), .B(n1365), .Y(n1330) );
  NOR4BX1 U1642 ( .AN(n1366), .B(\r1072/A[6] ), .C(\r1072/A[4] ), .D(
        \r1072/A[5] ), .Y(n1365) );
  AOI211X1 U1643 ( .A0(n141), .A1(n664), .B0(\r1072/A[3] ), .C0(\r1072/A[2] ), 
        .Y(n1366) );
  NOR2X1 U1644 ( .A(n1349), .B(n1331), .Y(N2284) );
  XOR2X1 U1645 ( .A(\r1068/A[7] ), .B(n1367), .Y(n1331) );
  NOR4BX1 U1646 ( .AN(n1368), .B(\r1068/A[6] ), .C(\r1068/A[4] ), .D(
        \r1068/A[5] ), .Y(n1367) );
  AOI211X1 U1647 ( .A0(\r1068/A[1] ), .A1(n13), .B0(\r1068/A[3] ), .C0(
        \r1068/A[2] ), .Y(n1368) );
  XOR2X1 U1648 ( .A(\r1070/A[7] ), .B(n1369), .Y(n1349) );
  NOR4BX1 U1649 ( .AN(n1370), .B(\r1070/A[6] ), .C(\r1070/A[4] ), .D(
        \r1070/A[5] ), .Y(n1369) );
  AOI211X1 U1650 ( .A0(\r1070/A[1] ), .A1(n17), .B0(\r1070/A[3] ), .C0(
        \r1070/A[2] ), .Y(n1370) );
  XOR2X1 U1651 ( .A(n1371), .B(n1372), .Y(N1328) );
  NOR2X1 U1652 ( .A(\add_223_3/A[7] ), .B(n1373), .Y(n1372) );
  NOR3BXL U1653 ( .AN(n1374), .B(n1375), .C(n1376), .Y(n1371) );
  OAI2BB2XL U1654 ( .B0(n686), .B1(n898), .A0N(n1036), .A1N(\r1092/A[2] ), .Y(
        n1376) );
  CLKINVX1 U1655 ( .A(\r1090/A[2] ), .Y(n898) );
  OAI2BB2XL U1656 ( .B0(n690), .B1(n146), .A0N(n1080), .A1N(\r1086/A[2] ), .Y(
        n1375) );
  AOI222XL U1657 ( .A0(n693), .A1(\r1094/A[2] ), .B0(n865), .B1(\r1070/A[2] ), 
        .C0(n1377), .C1(\r1084/A[2] ), .Y(n1374) );
  XOR2X1 U1658 ( .A(\add_223_3/A[7] ), .B(n1373), .Y(N1327) );
  AOI211X1 U1659 ( .A0(n1377), .A1(n149), .B0(n1378), .C0(n1379), .Y(n1373) );
  CLKINVX1 U1660 ( .A(n1380), .Y(n1379) );
  AOI221XL U1661 ( .A0(\r1086/A[1] ), .A1(n1080), .B0(py[1]), .B1(n691), .C0(
        n1381), .Y(n1380) );
  OAI2BB2XL U1662 ( .B0(n686), .B1(n897), .A0N(n1036), .A1N(n149), .Y(n1381)
         );
  CLKINVX1 U1663 ( .A(\r1090/A[1] ), .Y(n897) );
  AO22X1 U1664 ( .A0(n865), .A1(\r1070/A[1] ), .B0(n694), .B1(\r1094/A[1] ), 
        .Y(n1378) );
  AOI211X1 U1665 ( .A0(n1377), .A1(\r1084/A[0] ), .B0(n1382), .C0(n1383), .Y(
        \add_223_3/A[7] ) );
  CLKINVX1 U1666 ( .A(n1384), .Y(n1383) );
  AOI221XL U1667 ( .A0(n17), .A1(n1080), .B0(\r1084/A[0] ), .B1(n691), .C0(
        n1385), .Y(n1384) );
  OAI2BB2XL U1668 ( .B0(n686), .B1(n704), .A0N(n1036), .A1N(\r1084/A[0] ), .Y(
        n1385) );
  NOR3X1 U1669 ( .A(n150), .B(rc[1]), .C(n140), .Y(n1036) );
  CLKINVX1 U1670 ( .A(n1055), .Y(n1013) );
  NOR3X1 U1671 ( .A(rc[0]), .B(rc[1]), .C(n140), .Y(n1055) );
  NOR2X1 U1672 ( .A(n139), .B(n150), .Y(n1291) );
  NOR3X1 U1673 ( .A(rc[0]), .B(rc[2]), .C(n139), .Y(n1080) );
  AO22X1 U1674 ( .A0(n865), .A1(n17), .B0(n694), .B1(n17), .Y(n1382) );
  CLKINVX1 U1675 ( .A(n964), .Y(n1377) );
  NAND3X1 U1676 ( .A(n139), .B(n140), .C(rc[0]), .Y(n964) );
  XOR2X1 U1677 ( .A(n1386), .B(N1084), .Y(N1146) );
  NAND2X1 U1678 ( .A(N1085), .B(N1086), .Y(n1386) );
  XNOR2X1 U1679 ( .A(\add_208/A[7] ), .B(N1085), .Y(N1145) );
  CLKINVX1 U1680 ( .A(N1086), .Y(\add_208/A[7] ) );
endmodule


module COMPARE_0 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n62, n63, n64, n65, n66, n67, n68, n69, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167;

  DFFSX1 \OUT_reg[7]  ( .D(n62), .CK(clk), .SN(n14), .Q(OUT[7]), .QN(n160) );
  DFFSX1 \OUT_reg[0]  ( .D(n69), .CK(clk), .SN(n14), .Q(OUT[0]), .QN(n167) );
  DFFSX1 \OUT_reg[4]  ( .D(n65), .CK(clk), .SN(n14), .Q(OUT[4]), .QN(n163) );
  DFFSX1 \OUT_reg[2]  ( .D(n67), .CK(clk), .SN(n14), .Q(OUT[2]), .QN(n165) );
  DFFSX1 \OUT_reg[5]  ( .D(n64), .CK(clk), .SN(n14), .Q(OUT[5]), .QN(n162) );
  DFFSX1 \OUT_reg[3]  ( .D(n66), .CK(clk), .SN(n14), .Q(OUT[3]), .QN(n164) );
  DFFSX1 \OUT_reg[6]  ( .D(n63), .CK(clk), .SN(n14), .Q(OUT[6]), .QN(n161) );
  DFFSX1 \OUT_reg[1]  ( .D(n68), .CK(clk), .SN(n14), .Q(OUT[1]), .QN(n166) );
  CLKINVX1 U2 ( .A(n19), .Y(n41) );
  CLKINVX1 U3 ( .A(n17), .Y(n40) );
  CLKINVX1 U4 ( .A(n22), .Y(n42) );
  CLKINVX1 U5 ( .A(n7), .Y(n8) );
  CLKINVX1 U6 ( .A(n11), .Y(n12) );
  CLKINVX1 U7 ( .A(INS[0]), .Y(n4) );
  CLKINVX1 U8 ( .A(INS[1]), .Y(n5) );
  CLKINVX1 U9 ( .A(INS[4]), .Y(n9) );
  CLKINVX1 U10 ( .A(INS[5]), .Y(n10) );
  CLKINVX1 U11 ( .A(DEL[6]), .Y(n3) );
  CLKBUFX3 U12 ( .A(INS[6]), .Y(n11) );
  CLKBUFX3 U13 ( .A(INS[3]), .Y(n7) );
  CLKINVX1 U14 ( .A(INS[2]), .Y(n6) );
  CLKINVX1 U15 ( .A(DEL[3]), .Y(n2) );
  CLKINVX1 U16 ( .A(DEL[2]), .Y(n1) );
  CLKINVX1 U17 ( .A(INS[7]), .Y(n13) );
  CLKINVX1 U18 ( .A(n88), .Y(N26) );
  CLKINVX1 U19 ( .A(n86), .Y(n107) );
  CLKINVX1 U20 ( .A(n47), .Y(n77) );
  CLKINVX1 U21 ( .A(n45), .Y(n76) );
  CLKINVX1 U22 ( .A(RST), .Y(n14) );
  CLKINVX1 U23 ( .A(n50), .Y(n78) );
  NAND2X1 U24 ( .A(DEL[7]), .B(n13), .Y(n37) );
  NAND2BX1 U25 ( .AN(DEL[4]), .B(INS[4]), .Y(n20) );
  NAND2BX1 U26 ( .AN(INS[4]), .B(DEL[4]), .Y(n31) );
  NAND2X1 U27 ( .A(n20), .B(n31), .Y(n33) );
  NAND2BX1 U28 ( .AN(DEL[0]), .B(INS[0]), .Y(n16) );
  NOR2X1 U29 ( .A(n1), .B(INS[2]), .Y(n28) );
  NAND2X1 U30 ( .A(INS[2]), .B(n1), .Y(n18) );
  NAND2BX1 U31 ( .AN(n28), .B(n18), .Y(n24) );
  OA21XL U32 ( .A0(n16), .A1(n5), .B0(DEL[1]), .Y(n15) );
  AOI211X1 U33 ( .A0(n16), .A1(n5), .B0(n24), .C0(n15), .Y(n17) );
  NAND2X1 U34 ( .A(n7), .B(n2), .Y(n26) );
  NOR2X1 U35 ( .A(n2), .B(n7), .Y(n29) );
  AOI31X1 U36 ( .A0(n40), .A1(n18), .A2(n26), .B0(n29), .Y(n19) );
  NAND2BX1 U37 ( .AN(DEL[5]), .B(INS[5]), .Y(n35) );
  OAI211X1 U38 ( .A0(n33), .A1(n41), .B0(n35), .C0(n20), .Y(n21) );
  NAND2BX1 U39 ( .AN(INS[5]), .B(DEL[5]), .Y(n30) );
  XOR2X1 U40 ( .A(n12), .B(DEL[6]), .Y(n34) );
  AOI32X1 U41 ( .A0(n21), .A1(n30), .A2(n34), .B0(n11), .B1(n3), .Y(n22) );
  NOR2X1 U42 ( .A(n13), .B(DEL[7]), .Y(n39) );
  AO21X1 U43 ( .A0(n37), .A1(n42), .B0(n39), .Y(N4) );
  NAND2BX1 U44 ( .AN(INS[0]), .B(DEL[0]), .Y(n25) );
  AOI2BB1X1 U45 ( .A0N(n25), .A1N(INS[1]), .B0(DEL[1]), .Y(n23) );
  AOI211X1 U46 ( .A0(INS[1]), .A1(n25), .B0(n24), .C0(n23), .Y(n27) );
  OAI31XL U47 ( .A0(n29), .A1(n28), .A2(n27), .B0(n26), .Y(n32) );
  OAI211X1 U48 ( .A0(n33), .A1(n32), .B0(n31), .C0(n30), .Y(n36) );
  AOI32X1 U49 ( .A0(n36), .A1(n35), .A2(n34), .B0(DEL[6]), .B1(n12), .Y(n38)
         );
  OAI21XL U50 ( .A0(n39), .A1(n38), .B0(n37), .Y(N3) );
  NAND2X1 U51 ( .A(INS[7]), .B(n160), .Y(n73) );
  NAND2BX1 U52 ( .AN(INS[4]), .B(OUT[4]), .Y(n48) );
  NAND2BX1 U53 ( .AN(OUT[4]), .B(INS[4]), .Y(n59) );
  NAND2X1 U54 ( .A(n48), .B(n59), .Y(n61) );
  NAND2BX1 U55 ( .AN(INS[0]), .B(OUT[0]), .Y(n44) );
  NOR2X1 U56 ( .A(n6), .B(OUT[2]), .Y(n56) );
  NAND2X1 U57 ( .A(OUT[2]), .B(n6), .Y(n46) );
  NAND2BX1 U58 ( .AN(n56), .B(n46), .Y(n52) );
  OA21XL U59 ( .A0(n44), .A1(n166), .B0(INS[1]), .Y(n43) );
  AOI211X1 U60 ( .A0(n44), .A1(n166), .B0(n52), .C0(n43), .Y(n45) );
  NAND2X1 U61 ( .A(OUT[3]), .B(n8), .Y(n54) );
  NOR2X1 U62 ( .A(n8), .B(OUT[3]), .Y(n57) );
  AOI31X1 U63 ( .A0(n76), .A1(n46), .A2(n54), .B0(n57), .Y(n47) );
  NAND2BX1 U64 ( .AN(INS[5]), .B(OUT[5]), .Y(n71) );
  OAI211X1 U65 ( .A0(n61), .A1(n77), .B0(n71), .C0(n48), .Y(n49) );
  NAND2BX1 U66 ( .AN(OUT[5]), .B(INS[5]), .Y(n58) );
  XOR2X1 U67 ( .A(n161), .B(n11), .Y(n70) );
  AOI32X1 U68 ( .A0(n49), .A1(n58), .A2(n70), .B0(OUT[6]), .B1(n12), .Y(n50)
         );
  NOR2X1 U69 ( .A(n160), .B(INS[7]), .Y(n75) );
  AO21X1 U70 ( .A0(n73), .A1(n78), .B0(n75), .Y(N6) );
  NAND2BX1 U71 ( .AN(OUT[0]), .B(INS[0]), .Y(n53) );
  AOI2BB1X1 U72 ( .A0N(n53), .A1N(OUT[1]), .B0(INS[1]), .Y(n51) );
  AOI211X1 U73 ( .A0(OUT[1]), .A1(n53), .B0(n52), .C0(n51), .Y(n55) );
  OAI31XL U74 ( .A0(n57), .A1(n56), .A2(n55), .B0(n54), .Y(n60) );
  OAI211X1 U75 ( .A0(n61), .A1(n60), .B0(n59), .C0(n58), .Y(n72) );
  AOI32X1 U76 ( .A0(n72), .A1(n71), .A2(n70), .B0(n11), .B1(n161), .Y(n74) );
  OAI21XL U77 ( .A0(n75), .A1(n74), .B0(n73), .Y(N25) );
  NAND2BX1 U78 ( .AN(DEL[5]), .B(OUT[5]), .Y(n101) );
  NOR2X1 U79 ( .A(n161), .B(DEL[6]), .Y(n105) );
  NAND2X1 U80 ( .A(DEL[6]), .B(n161), .Y(n87) );
  NAND2BX1 U81 ( .AN(n105), .B(n87), .Y(n100) );
  NAND2X1 U82 ( .A(DEL[3]), .B(n164), .Y(n97) );
  NAND2BX1 U83 ( .AN(OUT[2]), .B(DEL[2]), .Y(n82) );
  NOR2BX1 U84 ( .AN(DEL[0]), .B(OUT[0]), .Y(n80) );
  AO21X1 U85 ( .A0(n166), .A1(n80), .B0(DEL[1]), .Y(n79) );
  NAND2BX1 U86 ( .AN(DEL[2]), .B(OUT[2]), .Y(n92) );
  AND2X1 U87 ( .A(n82), .B(n92), .Y(n89) );
  OAI211X1 U88 ( .A0(n80), .A1(n166), .B0(n79), .C0(n89), .Y(n81) );
  NOR2X1 U89 ( .A(n164), .B(DEL[3]), .Y(n94) );
  AOI31X1 U90 ( .A0(n97), .A1(n82), .A2(n81), .B0(n94), .Y(n84) );
  NOR2BX1 U91 ( .AN(DEL[4]), .B(OUT[4]), .Y(n83) );
  NOR2BX1 U92 ( .AN(OUT[4]), .B(DEL[4]), .Y(n95) );
  NOR2X1 U93 ( .A(n83), .B(n95), .Y(n96) );
  NOR2BX1 U94 ( .AN(DEL[5]), .B(OUT[5]), .Y(n99) );
  AOI211X1 U95 ( .A0(n84), .A1(n96), .B0(n83), .C0(n99), .Y(n85) );
  NOR3BXL U96 ( .AN(n101), .B(n100), .C(n85), .Y(n86) );
  NAND2X1 U97 ( .A(DEL[7]), .B(n160), .Y(n103) );
  NOR2X1 U98 ( .A(n160), .B(DEL[7]), .Y(n106) );
  AOI31X1 U99 ( .A0(n107), .A1(n87), .A2(n103), .B0(n106), .Y(n88) );
  NOR2BX1 U100 ( .AN(OUT[0]), .B(DEL[0]), .Y(n91) );
  OAI2BB1X1 U101 ( .A0N(n91), .A1N(OUT[1]), .B0(DEL[1]), .Y(n90) );
  OAI211X1 U102 ( .A0(OUT[1]), .A1(n91), .B0(n90), .C0(n89), .Y(n93) );
  NAND3BX1 U103 ( .AN(n94), .B(n93), .C(n92), .Y(n98) );
  AOI31X1 U104 ( .A0(n98), .A1(n97), .A2(n96), .B0(n95), .Y(n102) );
  AOI211X1 U105 ( .A0(n102), .A1(n101), .B0(n100), .C0(n99), .Y(n104) );
  OAI31XL U106 ( .A0(n106), .A1(n105), .A2(n104), .B0(n103), .Y(N7) );
  OAI211X1 U107 ( .A0(n167), .A1(n108), .B0(n109), .C0(n110), .Y(n69) );
  AOI2BB2X1 U108 ( .B0(NXT[0]), .B1(n111), .A0N(n4), .A1N(n112), .Y(n110) );
  NAND2BX1 U109 ( .AN(n113), .B(PRE[0]), .Y(n109) );
  OAI221XL U110 ( .A0(n166), .A1(n108), .B0(n113), .B1(n114), .C0(n115), .Y(
        n68) );
  AOI2BB2X1 U111 ( .B0(n111), .B1(NXT[1]), .A0N(n5), .A1N(n112), .Y(n115) );
  CLKINVX1 U112 ( .A(PRE[1]), .Y(n114) );
  OAI221XL U113 ( .A0(n165), .A1(n108), .B0(n116), .B1(n113), .C0(n117), .Y(
        n67) );
  AOI2BB2X1 U114 ( .B0(n111), .B1(NXT[2]), .A0N(n6), .A1N(n112), .Y(n117) );
  OAI221XL U115 ( .A0(n164), .A1(n108), .B0(n118), .B1(n113), .C0(n119), .Y(
        n66) );
  AOI2BB2X1 U116 ( .B0(n111), .B1(NXT[3]), .A0N(n8), .A1N(n112), .Y(n119) );
  OAI221XL U117 ( .A0(n163), .A1(n108), .B0(n120), .B1(n113), .C0(n121), .Y(
        n65) );
  AOI2BB2X1 U118 ( .B0(n111), .B1(NXT[4]), .A0N(n9), .A1N(n112), .Y(n121) );
  OAI221XL U119 ( .A0(n162), .A1(n108), .B0(n122), .B1(n113), .C0(n123), .Y(
        n64) );
  AOI2BB2X1 U120 ( .B0(n111), .B1(NXT[5]), .A0N(n10), .A1N(n112), .Y(n123) );
  OAI221XL U121 ( .A0(n161), .A1(n108), .B0(n124), .B1(n113), .C0(n125), .Y(
        n63) );
  AOI2BB2X1 U122 ( .B0(n111), .B1(NXT[6]), .A0N(n12), .A1N(n112), .Y(n125) );
  OAI221XL U123 ( .A0(n160), .A1(n108), .B0(n126), .B1(n113), .C0(n127), .Y(
        n62) );
  AOI2BB2X1 U124 ( .B0(n111), .B1(NXT[7]), .A0N(n13), .A1N(n112), .Y(n127) );
  NAND2X1 U125 ( .A(n128), .B(n129), .Y(n112) );
  MXI2X1 U126 ( .A(n130), .B(n131), .S0(n132), .Y(n128) );
  AND3X1 U127 ( .A(n129), .B(n132), .C(n133), .Y(n111) );
  NAND2X1 U128 ( .A(n134), .B(N3), .Y(n113) );
  AND2X1 U129 ( .A(n135), .B(n129), .Y(n108) );
  OR2X1 U130 ( .A(N4), .B(N3), .Y(n129) );
  MXI2X1 U131 ( .A(n136), .B(n137), .S0(n132), .Y(n135) );
  CLKINVX1 U132 ( .A(N3), .Y(n132) );
  NOR2BX1 U133 ( .AN(n131), .B(n133), .Y(n137) );
  AND3X1 U134 ( .A(N25), .B(n138), .C(N26), .Y(n133) );
  NAND3BX1 U135 ( .AN(n138), .B(N26), .C(N25), .Y(n131) );
  OAI21XL U136 ( .A0(NXT[7]), .A1(n13), .B0(n139), .Y(n138) );
  OAI2BB2XL U137 ( .B0(n140), .B1(n141), .A0N(n13), .A1N(NXT[7]), .Y(n139) );
  AOI221XL U138 ( .A0(NXT[6]), .A1(n12), .B0(NXT[5]), .B1(n10), .C0(n142), .Y(
        n141) );
  CLKINVX1 U139 ( .A(n143), .Y(n142) );
  OAI221XL U140 ( .A0(n10), .A1(NXT[5]), .B0(n9), .B1(NXT[4]), .C0(n144), .Y(
        n143) );
  CLKINVX1 U141 ( .A(n145), .Y(n144) );
  AOI221XL U142 ( .A0(NXT[4]), .A1(n9), .B0(NXT[3]), .B1(n8), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n8), .A1(NXT[3]), .B0(n6), .B1(NXT[2]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI222XL U146 ( .A0(NXT[2]), .A1(n6), .B0(NXT[1]), .B1(n150), .C0(n4), .C1(
        n5), .Y(n149) );
  NAND2X1 U147 ( .A(INS[1]), .B(INS[0]), .Y(n150) );
  NOR2X1 U148 ( .A(NXT[6]), .B(n12), .Y(n140) );
  NOR2BX1 U149 ( .AN(n130), .B(n134), .Y(n136) );
  AND3X1 U150 ( .A(N6), .B(n151), .C(N7), .Y(n134) );
  NAND3BX1 U151 ( .AN(n151), .B(N6), .C(N7), .Y(n130) );
  OAI21XL U152 ( .A0(INS[7]), .A1(n126), .B0(n152), .Y(n151) );
  OAI21XL U153 ( .A0(PRE[7]), .A1(n13), .B0(n153), .Y(n152) );
  OAI21XL U154 ( .A0(n11), .A1(n124), .B0(n154), .Y(n153) );
  OAI221XL U155 ( .A0(PRE[5]), .A1(n10), .B0(PRE[6]), .B1(n12), .C0(n155), .Y(
        n154) );
  OAI221XL U156 ( .A0(INS[4]), .A1(n120), .B0(INS[5]), .B1(n122), .C0(n156), 
        .Y(n155) );
  OAI221XL U157 ( .A0(PRE[3]), .A1(n8), .B0(PRE[4]), .B1(n9), .C0(n157), .Y(
        n156) );
  OAI221XL U158 ( .A0(INS[2]), .A1(n116), .B0(n7), .B1(n118), .C0(n158), .Y(
        n157) );
  OAI222XL U159 ( .A0(n4), .A1(n5), .B0(PRE[1]), .B1(n159), .C0(PRE[2]), .C1(
        n6), .Y(n158) );
  NOR2X1 U160 ( .A(INS[1]), .B(INS[0]), .Y(n159) );
  CLKINVX1 U161 ( .A(PRE[3]), .Y(n118) );
  CLKINVX1 U162 ( .A(PRE[2]), .Y(n116) );
  CLKINVX1 U163 ( .A(PRE[5]), .Y(n122) );
  CLKINVX1 U164 ( .A(PRE[4]), .Y(n120) );
  CLKINVX1 U165 ( .A(PRE[6]), .Y(n124) );
  CLKINVX1 U166 ( .A(PRE[7]), .Y(n126) );
endmodule


module COMPARE_48 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  INVXL U2 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U3 ( .A(INS[0]), .Y(n6) );
  CLKINVX1 U4 ( .A(n23), .Y(n45) );
  CLKINVX1 U5 ( .A(n21), .Y(n44) );
  CLKINVX1 U6 ( .A(n26), .Y(n46) );
  CLKINVX1 U7 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U8 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U9 ( .A(DEL[6]), .Y(n5) );
  CLKINVX1 U10 ( .A(n8), .Y(n9) );
  CLKINVX1 U11 ( .A(n10), .Y(n11) );
  CLKINVX1 U12 ( .A(n3), .Y(n4) );
  CLKINVX1 U13 ( .A(n1), .Y(n2) );
  CLKINVX1 U14 ( .A(n14), .Y(n15) );
  CLKINVX1 U15 ( .A(n16), .Y(n17) );
  CLKINVX1 U16 ( .A(RST), .Y(n18) );
  CLKBUFX3 U17 ( .A(DEL[2]), .Y(n1) );
  CLKBUFX3 U18 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U21 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U22 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U23 ( .A(n92), .Y(N26) );
  CLKINVX1 U24 ( .A(n90), .Y(n111) );
  CLKINVX1 U25 ( .A(n51), .Y(n81) );
  CLKINVX1 U26 ( .A(n49), .Y(n80) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module COMPARE_47 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  CLKINVX1 U2 ( .A(INS[0]), .Y(n6) );
  CLKINVX1 U3 ( .A(n23), .Y(n45) );
  CLKINVX1 U4 ( .A(n21), .Y(n44) );
  CLKINVX1 U5 ( .A(n26), .Y(n46) );
  CLKINVX1 U6 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U7 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U8 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U9 ( .A(DEL[6]), .Y(n5) );
  CLKINVX1 U10 ( .A(n8), .Y(n9) );
  CLKINVX1 U11 ( .A(n10), .Y(n11) );
  CLKINVX1 U12 ( .A(n3), .Y(n4) );
  CLKINVX1 U13 ( .A(n1), .Y(n2) );
  CLKINVX1 U14 ( .A(n14), .Y(n15) );
  CLKINVX1 U15 ( .A(n16), .Y(n17) );
  CLKINVX1 U16 ( .A(RST), .Y(n18) );
  CLKBUFX3 U17 ( .A(DEL[2]), .Y(n1) );
  CLKBUFX3 U18 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U21 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U22 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U23 ( .A(n92), .Y(N26) );
  CLKINVX1 U24 ( .A(n90), .Y(n111) );
  CLKINVX1 U25 ( .A(n51), .Y(n81) );
  CLKINVX1 U26 ( .A(n49), .Y(n80) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module COMPARE_46 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  CLKINVX1 U2 ( .A(INS[0]), .Y(n6) );
  CLKINVX1 U3 ( .A(n23), .Y(n45) );
  CLKINVX1 U4 ( .A(n21), .Y(n44) );
  CLKINVX1 U5 ( .A(n26), .Y(n46) );
  CLKINVX1 U6 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U7 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U8 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U9 ( .A(DEL[6]), .Y(n5) );
  CLKINVX1 U10 ( .A(n8), .Y(n9) );
  CLKINVX1 U11 ( .A(n10), .Y(n11) );
  CLKINVX1 U12 ( .A(n3), .Y(n4) );
  CLKINVX1 U13 ( .A(n1), .Y(n2) );
  CLKINVX1 U14 ( .A(n14), .Y(n15) );
  CLKINVX1 U15 ( .A(n16), .Y(n17) );
  CLKINVX1 U16 ( .A(RST), .Y(n18) );
  CLKBUFX3 U17 ( .A(DEL[2]), .Y(n1) );
  CLKBUFX3 U18 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U21 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U22 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U23 ( .A(n92), .Y(N26) );
  CLKINVX1 U24 ( .A(n90), .Y(n111) );
  CLKINVX1 U25 ( .A(n51), .Y(n81) );
  CLKINVX1 U26 ( .A(n49), .Y(n80) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module COMPARE_45 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  CLKINVX1 U2 ( .A(INS[0]), .Y(n6) );
  CLKINVX1 U3 ( .A(n23), .Y(n45) );
  CLKINVX1 U4 ( .A(n21), .Y(n44) );
  CLKINVX1 U5 ( .A(n26), .Y(n46) );
  CLKINVX1 U6 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U7 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U8 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U9 ( .A(DEL[6]), .Y(n5) );
  CLKINVX1 U10 ( .A(n8), .Y(n9) );
  CLKINVX1 U11 ( .A(n10), .Y(n11) );
  CLKINVX1 U12 ( .A(n3), .Y(n4) );
  CLKINVX1 U13 ( .A(n1), .Y(n2) );
  CLKINVX1 U14 ( .A(n14), .Y(n15) );
  CLKINVX1 U15 ( .A(n16), .Y(n17) );
  CLKINVX1 U16 ( .A(RST), .Y(n18) );
  CLKBUFX3 U17 ( .A(DEL[2]), .Y(n1) );
  CLKBUFX3 U18 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U21 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U22 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U23 ( .A(n92), .Y(N26) );
  CLKINVX1 U24 ( .A(n90), .Y(n111) );
  CLKINVX1 U25 ( .A(n51), .Y(n81) );
  CLKINVX1 U26 ( .A(n49), .Y(n80) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module COMPARE_44 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  CLKINVX1 U2 ( .A(INS[0]), .Y(n6) );
  CLKINVX1 U3 ( .A(n23), .Y(n45) );
  CLKINVX1 U4 ( .A(n21), .Y(n44) );
  CLKINVX1 U5 ( .A(n26), .Y(n46) );
  CLKINVX1 U6 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U7 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U8 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U9 ( .A(DEL[6]), .Y(n5) );
  CLKINVX1 U10 ( .A(n8), .Y(n9) );
  CLKINVX1 U11 ( .A(n10), .Y(n11) );
  CLKINVX1 U12 ( .A(n3), .Y(n4) );
  CLKINVX1 U13 ( .A(n1), .Y(n2) );
  CLKINVX1 U14 ( .A(n14), .Y(n15) );
  CLKINVX1 U15 ( .A(n16), .Y(n17) );
  CLKINVX1 U16 ( .A(RST), .Y(n18) );
  CLKBUFX3 U17 ( .A(DEL[2]), .Y(n1) );
  CLKBUFX3 U18 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U21 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U22 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U23 ( .A(n92), .Y(N26) );
  CLKINVX1 U24 ( .A(n90), .Y(n111) );
  CLKINVX1 U25 ( .A(n51), .Y(n81) );
  CLKINVX1 U26 ( .A(n49), .Y(n80) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module COMPARE_43 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  CLKINVX1 U2 ( .A(INS[0]), .Y(n6) );
  CLKINVX1 U3 ( .A(n23), .Y(n45) );
  CLKINVX1 U4 ( .A(n21), .Y(n44) );
  CLKINVX1 U5 ( .A(n26), .Y(n46) );
  CLKINVX1 U6 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U7 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U8 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U9 ( .A(DEL[6]), .Y(n5) );
  CLKINVX1 U10 ( .A(n8), .Y(n9) );
  CLKINVX1 U11 ( .A(n10), .Y(n11) );
  CLKINVX1 U12 ( .A(n3), .Y(n4) );
  CLKINVX1 U13 ( .A(n1), .Y(n2) );
  CLKINVX1 U14 ( .A(n14), .Y(n15) );
  CLKINVX1 U15 ( .A(n16), .Y(n17) );
  CLKINVX1 U16 ( .A(RST), .Y(n18) );
  CLKBUFX3 U17 ( .A(DEL[2]), .Y(n1) );
  CLKBUFX3 U18 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U21 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U22 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U23 ( .A(n92), .Y(N26) );
  CLKINVX1 U24 ( .A(n90), .Y(n111) );
  CLKINVX1 U25 ( .A(n51), .Y(n81) );
  CLKINVX1 U26 ( .A(n49), .Y(n80) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module COMPARE_42 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  CLKINVX1 U2 ( .A(INS[0]), .Y(n6) );
  CLKINVX1 U3 ( .A(n23), .Y(n45) );
  CLKINVX1 U4 ( .A(n21), .Y(n44) );
  CLKINVX1 U5 ( .A(n26), .Y(n46) );
  CLKINVX1 U6 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U7 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U8 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U9 ( .A(DEL[6]), .Y(n5) );
  CLKINVX1 U10 ( .A(n8), .Y(n9) );
  CLKINVX1 U11 ( .A(n10), .Y(n11) );
  CLKINVX1 U12 ( .A(n3), .Y(n4) );
  CLKINVX1 U13 ( .A(n1), .Y(n2) );
  CLKINVX1 U14 ( .A(n14), .Y(n15) );
  CLKINVX1 U15 ( .A(n16), .Y(n17) );
  CLKINVX1 U16 ( .A(RST), .Y(n18) );
  CLKBUFX3 U17 ( .A(DEL[2]), .Y(n1) );
  CLKBUFX3 U18 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U21 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U22 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U23 ( .A(n92), .Y(N26) );
  CLKINVX1 U24 ( .A(n90), .Y(n111) );
  CLKINVX1 U25 ( .A(n51), .Y(n81) );
  CLKINVX1 U26 ( .A(n49), .Y(n80) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module COMPARE_41 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  CLKINVX1 U2 ( .A(INS[0]), .Y(n6) );
  CLKINVX1 U3 ( .A(n23), .Y(n45) );
  CLKINVX1 U4 ( .A(n21), .Y(n44) );
  CLKINVX1 U5 ( .A(n26), .Y(n46) );
  CLKINVX1 U6 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U7 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U8 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U9 ( .A(DEL[6]), .Y(n5) );
  CLKINVX1 U10 ( .A(n8), .Y(n9) );
  CLKINVX1 U11 ( .A(n10), .Y(n11) );
  CLKINVX1 U12 ( .A(n3), .Y(n4) );
  CLKINVX1 U13 ( .A(n1), .Y(n2) );
  CLKINVX1 U14 ( .A(n14), .Y(n15) );
  CLKINVX1 U15 ( .A(n16), .Y(n17) );
  CLKINVX1 U16 ( .A(RST), .Y(n18) );
  CLKBUFX3 U17 ( .A(DEL[2]), .Y(n1) );
  CLKBUFX3 U18 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U21 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U22 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U23 ( .A(n92), .Y(N26) );
  CLKINVX1 U24 ( .A(n90), .Y(n111) );
  CLKINVX1 U25 ( .A(n51), .Y(n81) );
  CLKINVX1 U26 ( .A(n49), .Y(n80) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module COMPARE_40 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  CLKINVX1 U2 ( .A(INS[0]), .Y(n6) );
  CLKINVX1 U3 ( .A(n23), .Y(n45) );
  CLKINVX1 U4 ( .A(n21), .Y(n44) );
  CLKINVX1 U5 ( .A(n26), .Y(n46) );
  CLKINVX1 U6 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U7 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U8 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U9 ( .A(DEL[6]), .Y(n5) );
  CLKINVX1 U10 ( .A(n8), .Y(n9) );
  CLKINVX1 U11 ( .A(n10), .Y(n11) );
  CLKINVX1 U12 ( .A(n3), .Y(n4) );
  CLKINVX1 U13 ( .A(n1), .Y(n2) );
  CLKINVX1 U14 ( .A(n14), .Y(n15) );
  CLKINVX1 U15 ( .A(n16), .Y(n17) );
  CLKINVX1 U16 ( .A(RST), .Y(n18) );
  CLKBUFX3 U17 ( .A(DEL[2]), .Y(n1) );
  CLKBUFX3 U18 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U21 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U22 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U23 ( .A(n92), .Y(N26) );
  CLKINVX1 U24 ( .A(n90), .Y(n111) );
  CLKINVX1 U25 ( .A(n51), .Y(n81) );
  CLKINVX1 U26 ( .A(n49), .Y(n80) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module COMPARE_39 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  CLKINVX1 U2 ( .A(INS[0]), .Y(n6) );
  CLKINVX1 U3 ( .A(n23), .Y(n45) );
  CLKINVX1 U4 ( .A(n21), .Y(n44) );
  CLKINVX1 U5 ( .A(n26), .Y(n46) );
  CLKINVX1 U6 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U7 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U8 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U9 ( .A(DEL[6]), .Y(n5) );
  CLKINVX1 U10 ( .A(n8), .Y(n9) );
  CLKINVX1 U11 ( .A(n10), .Y(n11) );
  CLKINVX1 U12 ( .A(n3), .Y(n4) );
  CLKINVX1 U13 ( .A(n1), .Y(n2) );
  CLKINVX1 U14 ( .A(n14), .Y(n15) );
  CLKINVX1 U15 ( .A(n16), .Y(n17) );
  CLKINVX1 U16 ( .A(RST), .Y(n18) );
  CLKBUFX3 U17 ( .A(DEL[2]), .Y(n1) );
  CLKBUFX3 U18 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U21 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U22 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U23 ( .A(n92), .Y(N26) );
  CLKINVX1 U24 ( .A(n90), .Y(n111) );
  CLKINVX1 U25 ( .A(n51), .Y(n81) );
  CLKINVX1 U26 ( .A(n49), .Y(n80) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module COMPARE_38 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  CLKINVX1 U2 ( .A(INS[0]), .Y(n6) );
  CLKINVX1 U3 ( .A(n23), .Y(n45) );
  CLKINVX1 U4 ( .A(n21), .Y(n44) );
  CLKINVX1 U5 ( .A(n26), .Y(n46) );
  CLKINVX1 U6 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U7 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U8 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U9 ( .A(DEL[6]), .Y(n5) );
  CLKINVX1 U10 ( .A(n8), .Y(n9) );
  CLKINVX1 U11 ( .A(n10), .Y(n11) );
  CLKINVX1 U12 ( .A(n3), .Y(n4) );
  CLKINVX1 U13 ( .A(n1), .Y(n2) );
  CLKINVX1 U14 ( .A(n14), .Y(n15) );
  CLKINVX1 U15 ( .A(n16), .Y(n17) );
  CLKINVX1 U16 ( .A(RST), .Y(n18) );
  CLKBUFX3 U17 ( .A(DEL[2]), .Y(n1) );
  CLKBUFX3 U18 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U21 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U22 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U23 ( .A(n92), .Y(N26) );
  CLKINVX1 U24 ( .A(n90), .Y(n111) );
  CLKINVX1 U25 ( .A(n51), .Y(n81) );
  CLKINVX1 U26 ( .A(n49), .Y(n80) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module COMPARE_37 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  CLKINVX1 U2 ( .A(INS[0]), .Y(n6) );
  CLKINVX1 U3 ( .A(n23), .Y(n45) );
  CLKINVX1 U4 ( .A(n21), .Y(n44) );
  CLKINVX1 U5 ( .A(n26), .Y(n46) );
  CLKINVX1 U6 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U7 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U8 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U9 ( .A(DEL[6]), .Y(n5) );
  CLKINVX1 U10 ( .A(n8), .Y(n9) );
  CLKINVX1 U11 ( .A(n10), .Y(n11) );
  CLKINVX1 U12 ( .A(n3), .Y(n4) );
  CLKINVX1 U13 ( .A(n1), .Y(n2) );
  CLKINVX1 U14 ( .A(n14), .Y(n15) );
  CLKINVX1 U15 ( .A(n16), .Y(n17) );
  CLKINVX1 U16 ( .A(RST), .Y(n18) );
  CLKBUFX3 U17 ( .A(DEL[2]), .Y(n1) );
  CLKBUFX3 U18 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U21 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U22 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U23 ( .A(n92), .Y(N26) );
  CLKINVX1 U24 ( .A(n90), .Y(n111) );
  CLKINVX1 U25 ( .A(n51), .Y(n81) );
  CLKINVX1 U26 ( .A(n49), .Y(n80) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module COMPARE_36 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  CLKINVX1 U2 ( .A(INS[0]), .Y(n6) );
  CLKINVX1 U3 ( .A(n23), .Y(n45) );
  CLKINVX1 U4 ( .A(n21), .Y(n44) );
  CLKINVX1 U5 ( .A(n26), .Y(n46) );
  CLKINVX1 U6 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U7 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U8 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U9 ( .A(DEL[6]), .Y(n5) );
  CLKINVX1 U10 ( .A(n8), .Y(n9) );
  CLKINVX1 U11 ( .A(n10), .Y(n11) );
  CLKINVX1 U12 ( .A(n3), .Y(n4) );
  CLKINVX1 U13 ( .A(n1), .Y(n2) );
  CLKINVX1 U14 ( .A(n14), .Y(n15) );
  CLKINVX1 U15 ( .A(n16), .Y(n17) );
  CLKINVX1 U16 ( .A(RST), .Y(n18) );
  CLKBUFX3 U17 ( .A(DEL[2]), .Y(n1) );
  CLKBUFX3 U18 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U21 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U22 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U23 ( .A(n92), .Y(N26) );
  CLKINVX1 U24 ( .A(n90), .Y(n111) );
  CLKINVX1 U25 ( .A(n51), .Y(n81) );
  CLKINVX1 U26 ( .A(n49), .Y(n80) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module COMPARE_35 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  INVXL U2 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U3 ( .A(INS[0]), .Y(n6) );
  CLKINVX1 U4 ( .A(n23), .Y(n45) );
  CLKINVX1 U5 ( .A(n21), .Y(n44) );
  CLKINVX1 U6 ( .A(n26), .Y(n46) );
  CLKINVX1 U7 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U8 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U9 ( .A(DEL[6]), .Y(n5) );
  CLKINVX1 U10 ( .A(n8), .Y(n9) );
  CLKINVX1 U11 ( .A(n10), .Y(n11) );
  CLKINVX1 U12 ( .A(n3), .Y(n4) );
  CLKINVX1 U13 ( .A(n1), .Y(n2) );
  CLKINVX1 U14 ( .A(n14), .Y(n15) );
  CLKINVX1 U15 ( .A(n16), .Y(n17) );
  CLKINVX1 U16 ( .A(RST), .Y(n18) );
  CLKBUFX3 U17 ( .A(DEL[2]), .Y(n1) );
  CLKBUFX3 U18 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U21 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U22 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U23 ( .A(n92), .Y(N26) );
  CLKINVX1 U24 ( .A(n90), .Y(n111) );
  CLKINVX1 U25 ( .A(n51), .Y(n81) );
  CLKINVX1 U26 ( .A(n49), .Y(n80) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module COMPARE_34 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  CLKINVX1 U2 ( .A(INS[0]), .Y(n6) );
  CLKINVX1 U3 ( .A(n23), .Y(n45) );
  CLKINVX1 U4 ( .A(n21), .Y(n44) );
  CLKINVX1 U5 ( .A(n26), .Y(n46) );
  CLKINVX1 U6 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U7 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U8 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U9 ( .A(DEL[6]), .Y(n5) );
  CLKINVX1 U10 ( .A(n8), .Y(n9) );
  CLKINVX1 U11 ( .A(n10), .Y(n11) );
  CLKINVX1 U12 ( .A(n3), .Y(n4) );
  CLKINVX1 U13 ( .A(n1), .Y(n2) );
  CLKINVX1 U14 ( .A(n14), .Y(n15) );
  CLKINVX1 U15 ( .A(n16), .Y(n17) );
  CLKINVX1 U16 ( .A(RST), .Y(n18) );
  CLKBUFX3 U17 ( .A(DEL[2]), .Y(n1) );
  CLKBUFX3 U18 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U21 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U22 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U23 ( .A(n92), .Y(N26) );
  CLKINVX1 U24 ( .A(n90), .Y(n111) );
  CLKINVX1 U25 ( .A(n51), .Y(n81) );
  CLKINVX1 U26 ( .A(n49), .Y(n80) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module COMPARE_33 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  CLKINVX1 U2 ( .A(INS[0]), .Y(n6) );
  CLKINVX1 U3 ( .A(n23), .Y(n45) );
  CLKINVX1 U4 ( .A(n21), .Y(n44) );
  CLKINVX1 U5 ( .A(n26), .Y(n46) );
  CLKINVX1 U6 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U7 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U8 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U9 ( .A(DEL[6]), .Y(n5) );
  CLKINVX1 U10 ( .A(n8), .Y(n9) );
  CLKINVX1 U11 ( .A(n10), .Y(n11) );
  CLKINVX1 U12 ( .A(n3), .Y(n4) );
  CLKINVX1 U13 ( .A(n1), .Y(n2) );
  CLKINVX1 U14 ( .A(n14), .Y(n15) );
  CLKINVX1 U15 ( .A(n16), .Y(n17) );
  CLKINVX1 U16 ( .A(RST), .Y(n18) );
  CLKBUFX3 U17 ( .A(DEL[2]), .Y(n1) );
  CLKBUFX3 U18 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U21 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U22 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U23 ( .A(n92), .Y(N26) );
  CLKINVX1 U24 ( .A(n90), .Y(n111) );
  CLKINVX1 U25 ( .A(n51), .Y(n81) );
  CLKINVX1 U26 ( .A(n49), .Y(n80) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module COMPARE_32 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  CLKINVX1 U2 ( .A(INS[0]), .Y(n6) );
  CLKINVX1 U3 ( .A(n23), .Y(n45) );
  CLKINVX1 U4 ( .A(n21), .Y(n44) );
  CLKINVX1 U5 ( .A(n26), .Y(n46) );
  CLKINVX1 U6 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U7 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U8 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U9 ( .A(DEL[6]), .Y(n5) );
  CLKINVX1 U10 ( .A(n8), .Y(n9) );
  CLKINVX1 U11 ( .A(n10), .Y(n11) );
  CLKINVX1 U12 ( .A(n3), .Y(n4) );
  CLKINVX1 U13 ( .A(n1), .Y(n2) );
  CLKINVX1 U14 ( .A(n14), .Y(n15) );
  CLKINVX1 U15 ( .A(n16), .Y(n17) );
  CLKINVX1 U16 ( .A(RST), .Y(n18) );
  CLKBUFX3 U17 ( .A(DEL[2]), .Y(n1) );
  CLKBUFX3 U18 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U21 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U22 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U23 ( .A(n92), .Y(N26) );
  CLKINVX1 U24 ( .A(n90), .Y(n111) );
  CLKINVX1 U25 ( .A(n51), .Y(n81) );
  CLKINVX1 U26 ( .A(n49), .Y(n80) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module COMPARE_31 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  CLKINVX1 U2 ( .A(INS[0]), .Y(n6) );
  CLKINVX1 U3 ( .A(n23), .Y(n45) );
  CLKINVX1 U4 ( .A(n21), .Y(n44) );
  CLKINVX1 U5 ( .A(n26), .Y(n46) );
  CLKINVX1 U6 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U7 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U8 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U9 ( .A(DEL[6]), .Y(n5) );
  CLKINVX1 U10 ( .A(n8), .Y(n9) );
  CLKINVX1 U11 ( .A(n10), .Y(n11) );
  CLKINVX1 U12 ( .A(n3), .Y(n4) );
  CLKINVX1 U13 ( .A(n1), .Y(n2) );
  CLKINVX1 U14 ( .A(n14), .Y(n15) );
  CLKINVX1 U15 ( .A(n16), .Y(n17) );
  CLKINVX1 U16 ( .A(RST), .Y(n18) );
  CLKBUFX3 U17 ( .A(DEL[2]), .Y(n1) );
  CLKBUFX3 U18 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U21 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U22 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U23 ( .A(n92), .Y(N26) );
  CLKINVX1 U24 ( .A(n90), .Y(n111) );
  CLKINVX1 U25 ( .A(n51), .Y(n81) );
  CLKINVX1 U26 ( .A(n49), .Y(n80) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module COMPARE_30 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  CLKINVX1 U2 ( .A(INS[0]), .Y(n6) );
  CLKINVX1 U3 ( .A(n23), .Y(n45) );
  CLKINVX1 U4 ( .A(n21), .Y(n44) );
  CLKINVX1 U5 ( .A(n26), .Y(n46) );
  CLKINVX1 U6 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U7 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U8 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U9 ( .A(DEL[6]), .Y(n5) );
  CLKINVX1 U10 ( .A(n8), .Y(n9) );
  CLKINVX1 U11 ( .A(n10), .Y(n11) );
  CLKINVX1 U12 ( .A(n3), .Y(n4) );
  CLKINVX1 U13 ( .A(n1), .Y(n2) );
  CLKINVX1 U14 ( .A(n14), .Y(n15) );
  CLKINVX1 U15 ( .A(n16), .Y(n17) );
  CLKINVX1 U16 ( .A(RST), .Y(n18) );
  CLKBUFX3 U17 ( .A(DEL[2]), .Y(n1) );
  CLKBUFX3 U18 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U21 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U22 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U23 ( .A(n92), .Y(N26) );
  CLKINVX1 U24 ( .A(n90), .Y(n111) );
  CLKINVX1 U25 ( .A(n51), .Y(n81) );
  CLKINVX1 U26 ( .A(n49), .Y(n80) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module COMPARE_29 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  CLKINVX1 U2 ( .A(INS[0]), .Y(n6) );
  CLKINVX1 U3 ( .A(n23), .Y(n45) );
  CLKINVX1 U4 ( .A(n21), .Y(n44) );
  CLKINVX1 U5 ( .A(n26), .Y(n46) );
  CLKINVX1 U6 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U7 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U8 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U9 ( .A(DEL[6]), .Y(n5) );
  CLKINVX1 U10 ( .A(n8), .Y(n9) );
  CLKINVX1 U11 ( .A(n10), .Y(n11) );
  CLKINVX1 U12 ( .A(n3), .Y(n4) );
  CLKINVX1 U13 ( .A(n1), .Y(n2) );
  CLKINVX1 U14 ( .A(n14), .Y(n15) );
  CLKINVX1 U15 ( .A(n16), .Y(n17) );
  CLKINVX1 U16 ( .A(RST), .Y(n18) );
  CLKBUFX3 U17 ( .A(DEL[2]), .Y(n1) );
  CLKBUFX3 U18 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U21 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U22 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U23 ( .A(n92), .Y(N26) );
  CLKINVX1 U24 ( .A(n90), .Y(n111) );
  CLKINVX1 U25 ( .A(n51), .Y(n81) );
  CLKINVX1 U26 ( .A(n49), .Y(n80) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module COMPARE_28 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  CLKINVX1 U2 ( .A(INS[0]), .Y(n6) );
  CLKINVX1 U3 ( .A(n23), .Y(n45) );
  CLKINVX1 U4 ( .A(n21), .Y(n44) );
  CLKINVX1 U5 ( .A(n26), .Y(n46) );
  CLKINVX1 U6 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U7 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U8 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U9 ( .A(DEL[6]), .Y(n5) );
  CLKINVX1 U10 ( .A(n8), .Y(n9) );
  CLKINVX1 U11 ( .A(n10), .Y(n11) );
  CLKINVX1 U12 ( .A(n3), .Y(n4) );
  CLKINVX1 U13 ( .A(n1), .Y(n2) );
  CLKINVX1 U14 ( .A(n14), .Y(n15) );
  CLKINVX1 U15 ( .A(n16), .Y(n17) );
  CLKINVX1 U16 ( .A(RST), .Y(n18) );
  CLKBUFX3 U17 ( .A(DEL[2]), .Y(n1) );
  CLKBUFX3 U18 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U21 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U22 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U23 ( .A(n92), .Y(N26) );
  CLKINVX1 U24 ( .A(n90), .Y(n111) );
  CLKINVX1 U25 ( .A(n51), .Y(n81) );
  CLKINVX1 U26 ( .A(n49), .Y(n80) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module COMPARE_27 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  CLKINVX1 U2 ( .A(INS[0]), .Y(n6) );
  CLKINVX1 U3 ( .A(n23), .Y(n45) );
  CLKINVX1 U4 ( .A(n21), .Y(n44) );
  CLKINVX1 U5 ( .A(n26), .Y(n46) );
  CLKINVX1 U6 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U7 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U8 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U9 ( .A(DEL[6]), .Y(n5) );
  CLKINVX1 U10 ( .A(n8), .Y(n9) );
  CLKINVX1 U11 ( .A(n10), .Y(n11) );
  CLKINVX1 U12 ( .A(n3), .Y(n4) );
  CLKINVX1 U13 ( .A(n1), .Y(n2) );
  CLKINVX1 U14 ( .A(n14), .Y(n15) );
  CLKINVX1 U15 ( .A(n16), .Y(n17) );
  CLKINVX1 U16 ( .A(RST), .Y(n18) );
  CLKBUFX3 U17 ( .A(DEL[2]), .Y(n1) );
  CLKBUFX3 U18 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U21 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U22 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U23 ( .A(n92), .Y(N26) );
  CLKINVX1 U24 ( .A(n90), .Y(n111) );
  CLKINVX1 U25 ( .A(n51), .Y(n81) );
  CLKINVX1 U26 ( .A(n49), .Y(n80) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module COMPARE_26 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  CLKINVX1 U2 ( .A(INS[0]), .Y(n6) );
  CLKINVX1 U3 ( .A(n23), .Y(n45) );
  CLKINVX1 U4 ( .A(n21), .Y(n44) );
  CLKINVX1 U5 ( .A(n26), .Y(n46) );
  CLKINVX1 U6 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U7 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U8 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U9 ( .A(DEL[6]), .Y(n5) );
  CLKINVX1 U10 ( .A(n8), .Y(n9) );
  CLKINVX1 U11 ( .A(n10), .Y(n11) );
  CLKINVX1 U12 ( .A(n3), .Y(n4) );
  CLKINVX1 U13 ( .A(n1), .Y(n2) );
  CLKINVX1 U14 ( .A(n14), .Y(n15) );
  CLKINVX1 U15 ( .A(n16), .Y(n17) );
  CLKINVX1 U16 ( .A(RST), .Y(n18) );
  CLKBUFX3 U17 ( .A(DEL[2]), .Y(n1) );
  CLKBUFX3 U18 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U21 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U22 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U23 ( .A(n92), .Y(N26) );
  CLKINVX1 U24 ( .A(n90), .Y(n111) );
  CLKINVX1 U25 ( .A(n51), .Y(n81) );
  CLKINVX1 U26 ( .A(n49), .Y(n80) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module COMPARE_25 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  CLKINVX1 U2 ( .A(INS[0]), .Y(n6) );
  CLKINVX1 U3 ( .A(n23), .Y(n45) );
  CLKINVX1 U4 ( .A(n21), .Y(n44) );
  CLKINVX1 U5 ( .A(n26), .Y(n46) );
  CLKINVX1 U6 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U7 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U8 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U9 ( .A(DEL[6]), .Y(n5) );
  CLKINVX1 U10 ( .A(n8), .Y(n9) );
  CLKINVX1 U11 ( .A(n10), .Y(n11) );
  CLKINVX1 U12 ( .A(n3), .Y(n4) );
  CLKINVX1 U13 ( .A(n1), .Y(n2) );
  CLKINVX1 U14 ( .A(n14), .Y(n15) );
  CLKINVX1 U15 ( .A(n16), .Y(n17) );
  CLKINVX1 U16 ( .A(RST), .Y(n18) );
  CLKBUFX3 U17 ( .A(DEL[2]), .Y(n1) );
  CLKBUFX3 U18 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U21 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U22 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U23 ( .A(n92), .Y(N26) );
  CLKINVX1 U24 ( .A(n90), .Y(n111) );
  CLKINVX1 U25 ( .A(n51), .Y(n81) );
  CLKINVX1 U26 ( .A(n49), .Y(n80) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module COMPARE_24 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  CLKINVX1 U2 ( .A(INS[0]), .Y(n6) );
  CLKINVX1 U3 ( .A(n23), .Y(n45) );
  CLKINVX1 U4 ( .A(n21), .Y(n44) );
  CLKINVX1 U5 ( .A(n26), .Y(n46) );
  CLKINVX1 U6 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U7 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U8 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U9 ( .A(DEL[6]), .Y(n5) );
  CLKINVX1 U10 ( .A(n8), .Y(n9) );
  CLKINVX1 U11 ( .A(n10), .Y(n11) );
  CLKINVX1 U12 ( .A(n3), .Y(n4) );
  CLKINVX1 U13 ( .A(n1), .Y(n2) );
  CLKINVX1 U14 ( .A(n14), .Y(n15) );
  CLKINVX1 U15 ( .A(n16), .Y(n17) );
  CLKINVX1 U16 ( .A(RST), .Y(n18) );
  CLKBUFX3 U17 ( .A(DEL[2]), .Y(n1) );
  CLKBUFX3 U18 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U21 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U22 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U23 ( .A(n92), .Y(N26) );
  CLKINVX1 U24 ( .A(n90), .Y(n111) );
  CLKINVX1 U25 ( .A(n51), .Y(n81) );
  CLKINVX1 U26 ( .A(n49), .Y(n80) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module COMPARE_23 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  CLKINVX1 U2 ( .A(INS[0]), .Y(n6) );
  CLKINVX1 U3 ( .A(n23), .Y(n45) );
  CLKINVX1 U4 ( .A(n21), .Y(n44) );
  CLKINVX1 U5 ( .A(n26), .Y(n46) );
  CLKINVX1 U6 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U7 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U8 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U9 ( .A(DEL[6]), .Y(n5) );
  CLKINVX1 U10 ( .A(n8), .Y(n9) );
  CLKINVX1 U11 ( .A(n10), .Y(n11) );
  CLKINVX1 U12 ( .A(n3), .Y(n4) );
  CLKINVX1 U13 ( .A(n1), .Y(n2) );
  CLKINVX1 U14 ( .A(n14), .Y(n15) );
  CLKINVX1 U15 ( .A(n16), .Y(n17) );
  CLKINVX1 U16 ( .A(RST), .Y(n18) );
  CLKBUFX3 U17 ( .A(DEL[2]), .Y(n1) );
  CLKBUFX3 U18 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U21 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U22 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U23 ( .A(n92), .Y(N26) );
  CLKINVX1 U24 ( .A(n90), .Y(n111) );
  CLKINVX1 U25 ( .A(n51), .Y(n81) );
  CLKINVX1 U26 ( .A(n49), .Y(n80) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module COMPARE_22 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  INVXL U2 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U3 ( .A(INS[0]), .Y(n6) );
  CLKINVX1 U4 ( .A(n23), .Y(n45) );
  CLKINVX1 U5 ( .A(n21), .Y(n44) );
  CLKINVX1 U6 ( .A(n26), .Y(n46) );
  CLKINVX1 U7 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U8 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U9 ( .A(DEL[6]), .Y(n5) );
  CLKINVX1 U10 ( .A(n8), .Y(n9) );
  CLKINVX1 U11 ( .A(n10), .Y(n11) );
  CLKINVX1 U12 ( .A(n3), .Y(n4) );
  CLKINVX1 U13 ( .A(n1), .Y(n2) );
  CLKINVX1 U14 ( .A(n14), .Y(n15) );
  CLKINVX1 U15 ( .A(n16), .Y(n17) );
  CLKINVX1 U16 ( .A(RST), .Y(n18) );
  CLKBUFX3 U17 ( .A(DEL[2]), .Y(n1) );
  CLKBUFX3 U18 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U21 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U22 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U23 ( .A(n92), .Y(N26) );
  CLKINVX1 U24 ( .A(n90), .Y(n111) );
  CLKINVX1 U25 ( .A(n51), .Y(n81) );
  CLKINVX1 U26 ( .A(n49), .Y(n80) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module COMPARE_21 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  CLKINVX1 U2 ( .A(INS[0]), .Y(n6) );
  CLKINVX1 U3 ( .A(n23), .Y(n45) );
  CLKINVX1 U4 ( .A(n21), .Y(n44) );
  CLKINVX1 U5 ( .A(n26), .Y(n46) );
  CLKINVX1 U6 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U7 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U8 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U9 ( .A(DEL[6]), .Y(n5) );
  CLKINVX1 U10 ( .A(n8), .Y(n9) );
  CLKINVX1 U11 ( .A(n10), .Y(n11) );
  CLKINVX1 U12 ( .A(n3), .Y(n4) );
  CLKINVX1 U13 ( .A(n1), .Y(n2) );
  CLKINVX1 U14 ( .A(n14), .Y(n15) );
  CLKINVX1 U15 ( .A(n16), .Y(n17) );
  CLKINVX1 U16 ( .A(RST), .Y(n18) );
  CLKBUFX3 U17 ( .A(DEL[2]), .Y(n1) );
  CLKBUFX3 U18 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U21 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U22 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U23 ( .A(n92), .Y(N26) );
  CLKINVX1 U24 ( .A(n90), .Y(n111) );
  CLKINVX1 U25 ( .A(n51), .Y(n81) );
  CLKINVX1 U26 ( .A(n49), .Y(n80) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module COMPARE_20 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180;

  DFFSX1 \OUT_reg[7]  ( .D(n180), .CK(clk), .SN(n19), .Q(OUT[7]), .QN(n165) );
  DFFSX1 \OUT_reg[0]  ( .D(n173), .CK(clk), .SN(n19), .Q(OUT[0]), .QN(n172) );
  DFFSX1 \OUT_reg[4]  ( .D(n177), .CK(clk), .SN(n19), .Q(OUT[4]), .QN(n168) );
  DFFSX1 \OUT_reg[2]  ( .D(n175), .CK(clk), .SN(n19), .Q(OUT[2]), .QN(n170) );
  DFFSX1 \OUT_reg[5]  ( .D(n178), .CK(clk), .SN(n19), .Q(OUT[5]), .QN(n167) );
  DFFSX1 \OUT_reg[3]  ( .D(n176), .CK(clk), .SN(n19), .Q(OUT[3]), .QN(n169) );
  DFFSX1 \OUT_reg[6]  ( .D(n179), .CK(clk), .SN(n19), .Q(OUT[6]), .QN(n166) );
  DFFSX1 \OUT_reg[1]  ( .D(n174), .CK(clk), .SN(n19), .Q(OUT[1]), .QN(n171) );
  CLKINVX1 U2 ( .A(n8), .Y(n7) );
  CLKINVX1 U3 ( .A(INS[0]), .Y(n6) );
  CLKINVX1 U4 ( .A(n24), .Y(n46) );
  CLKINVX1 U5 ( .A(n22), .Y(n45) );
  CLKINVX1 U6 ( .A(n27), .Y(n47) );
  CLKINVX1 U7 ( .A(INS[1]), .Y(n8) );
  CLKINVX1 U8 ( .A(INS[4]), .Y(n13) );
  CLKINVX1 U9 ( .A(INS[5]), .Y(n14) );
  CLKINVX1 U10 ( .A(DEL[6]), .Y(n5) );
  CLKINVX1 U11 ( .A(n9), .Y(n10) );
  CLKINVX1 U12 ( .A(n11), .Y(n12) );
  CLKINVX1 U13 ( .A(n3), .Y(n4) );
  CLKINVX1 U14 ( .A(n1), .Y(n2) );
  CLKINVX1 U15 ( .A(n15), .Y(n16) );
  CLKINVX1 U16 ( .A(n17), .Y(n18) );
  CLKINVX1 U17 ( .A(RST), .Y(n19) );
  CLKBUFX3 U18 ( .A(DEL[2]), .Y(n1) );
  CLKBUFX3 U19 ( .A(INS[6]), .Y(n15) );
  CLKBUFX3 U20 ( .A(INS[3]), .Y(n11) );
  CLKBUFX3 U21 ( .A(INS[2]), .Y(n9) );
  CLKBUFX3 U22 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U23 ( .A(INS[7]), .Y(n17) );
  CLKINVX1 U24 ( .A(n93), .Y(N26) );
  CLKINVX1 U25 ( .A(n91), .Y(n112) );
  CLKINVX1 U26 ( .A(n52), .Y(n82) );
  CLKINVX1 U27 ( .A(n50), .Y(n81) );
  CLKINVX1 U28 ( .A(n55), .Y(n83) );
  NAND2X1 U29 ( .A(DEL[7]), .B(n18), .Y(n42) );
  NAND2BX1 U30 ( .AN(DEL[4]), .B(INS[4]), .Y(n25) );
  NAND2BX1 U31 ( .AN(INS[4]), .B(DEL[4]), .Y(n36) );
  NAND2X1 U32 ( .A(n25), .B(n36), .Y(n38) );
  NAND2BX1 U33 ( .AN(DEL[0]), .B(INS[0]), .Y(n21) );
  NOR2X1 U34 ( .A(n2), .B(n9), .Y(n33) );
  NAND2X1 U35 ( .A(n9), .B(n2), .Y(n23) );
  NAND2BX1 U36 ( .AN(n33), .B(n23), .Y(n29) );
  OA21XL U37 ( .A0(n21), .A1(n8), .B0(DEL[1]), .Y(n20) );
  AOI211X1 U38 ( .A0(n21), .A1(n8), .B0(n29), .C0(n20), .Y(n22) );
  NAND2X1 U39 ( .A(n11), .B(n4), .Y(n31) );
  NOR2X1 U40 ( .A(n4), .B(n11), .Y(n34) );
  AOI31X1 U41 ( .A0(n45), .A1(n23), .A2(n31), .B0(n34), .Y(n24) );
  NAND2BX1 U42 ( .AN(DEL[5]), .B(INS[5]), .Y(n40) );
  OAI211X1 U43 ( .A0(n38), .A1(n46), .B0(n40), .C0(n25), .Y(n26) );
  NAND2BX1 U44 ( .AN(INS[5]), .B(DEL[5]), .Y(n35) );
  XOR2X1 U45 ( .A(n16), .B(DEL[6]), .Y(n39) );
  AOI32X1 U46 ( .A0(n26), .A1(n35), .A2(n39), .B0(n15), .B1(n5), .Y(n27) );
  NOR2X1 U47 ( .A(n18), .B(DEL[7]), .Y(n44) );
  AO21X1 U48 ( .A0(n42), .A1(n47), .B0(n44), .Y(N4) );
  NAND2BX1 U49 ( .AN(INS[0]), .B(DEL[0]), .Y(n30) );
  AOI2BB1X1 U50 ( .A0N(n30), .A1N(n7), .B0(DEL[1]), .Y(n28) );
  AOI211X1 U51 ( .A0(n7), .A1(n30), .B0(n29), .C0(n28), .Y(n32) );
  OAI31XL U52 ( .A0(n34), .A1(n33), .A2(n32), .B0(n31), .Y(n37) );
  OAI211X1 U53 ( .A0(n38), .A1(n37), .B0(n36), .C0(n35), .Y(n41) );
  AOI32X1 U54 ( .A0(n41), .A1(n40), .A2(n39), .B0(DEL[6]), .B1(n16), .Y(n43)
         );
  OAI21XL U55 ( .A0(n44), .A1(n43), .B0(n42), .Y(N3) );
  NAND2X1 U56 ( .A(n17), .B(n165), .Y(n78) );
  NAND2BX1 U57 ( .AN(INS[4]), .B(OUT[4]), .Y(n53) );
  NAND2BX1 U58 ( .AN(OUT[4]), .B(INS[4]), .Y(n72) );
  NAND2X1 U59 ( .A(n53), .B(n72), .Y(n74) );
  NAND2BX1 U60 ( .AN(INS[0]), .B(OUT[0]), .Y(n49) );
  NOR2X1 U61 ( .A(n10), .B(OUT[2]), .Y(n61) );
  NAND2X1 U62 ( .A(OUT[2]), .B(n10), .Y(n51) );
  NAND2BX1 U63 ( .AN(n61), .B(n51), .Y(n57) );
  OA21XL U64 ( .A0(n49), .A1(n171), .B0(n7), .Y(n48) );
  AOI211X1 U65 ( .A0(n49), .A1(n171), .B0(n57), .C0(n48), .Y(n50) );
  NAND2X1 U66 ( .A(OUT[3]), .B(n12), .Y(n59) );
  NOR2X1 U67 ( .A(n12), .B(OUT[3]), .Y(n70) );
  AOI31X1 U68 ( .A0(n81), .A1(n51), .A2(n59), .B0(n70), .Y(n52) );
  NAND2BX1 U69 ( .AN(INS[5]), .B(OUT[5]), .Y(n76) );
  OAI211X1 U70 ( .A0(n74), .A1(n82), .B0(n76), .C0(n53), .Y(n54) );
  NAND2BX1 U71 ( .AN(OUT[5]), .B(INS[5]), .Y(n71) );
  XOR2X1 U72 ( .A(n166), .B(n15), .Y(n75) );
  AOI32X1 U73 ( .A0(n54), .A1(n71), .A2(n75), .B0(OUT[6]), .B1(n16), .Y(n55)
         );
  NOR2X1 U74 ( .A(n165), .B(n17), .Y(n80) );
  AO21X1 U75 ( .A0(n78), .A1(n83), .B0(n80), .Y(N6) );
  NAND2BX1 U76 ( .AN(OUT[0]), .B(INS[0]), .Y(n58) );
  AOI2BB1X1 U77 ( .A0N(n58), .A1N(OUT[1]), .B0(n7), .Y(n56) );
  AOI211X1 U78 ( .A0(OUT[1]), .A1(n58), .B0(n57), .C0(n56), .Y(n60) );
  OAI31XL U79 ( .A0(n70), .A1(n61), .A2(n60), .B0(n59), .Y(n73) );
  OAI211X1 U80 ( .A0(n74), .A1(n73), .B0(n72), .C0(n71), .Y(n77) );
  AOI32X1 U81 ( .A0(n77), .A1(n76), .A2(n75), .B0(n15), .B1(n166), .Y(n79) );
  OAI21XL U82 ( .A0(n80), .A1(n79), .B0(n78), .Y(N25) );
  NAND2BX1 U83 ( .AN(DEL[5]), .B(OUT[5]), .Y(n106) );
  NOR2X1 U84 ( .A(n166), .B(DEL[6]), .Y(n110) );
  NAND2X1 U85 ( .A(DEL[6]), .B(n166), .Y(n92) );
  NAND2BX1 U86 ( .AN(n110), .B(n92), .Y(n105) );
  NAND2X1 U87 ( .A(n3), .B(n169), .Y(n102) );
  NAND2BX1 U88 ( .AN(OUT[2]), .B(n1), .Y(n87) );
  NOR2BX1 U89 ( .AN(DEL[0]), .B(OUT[0]), .Y(n85) );
  AO21X1 U90 ( .A0(n171), .A1(n85), .B0(DEL[1]), .Y(n84) );
  NAND2BX1 U91 ( .AN(n1), .B(OUT[2]), .Y(n97) );
  AND2X1 U92 ( .A(n87), .B(n97), .Y(n94) );
  OAI211X1 U93 ( .A0(n85), .A1(n171), .B0(n84), .C0(n94), .Y(n86) );
  NOR2X1 U94 ( .A(n169), .B(n3), .Y(n99) );
  AOI31X1 U95 ( .A0(n102), .A1(n87), .A2(n86), .B0(n99), .Y(n89) );
  NOR2BX1 U96 ( .AN(DEL[4]), .B(OUT[4]), .Y(n88) );
  NOR2BX1 U97 ( .AN(OUT[4]), .B(DEL[4]), .Y(n100) );
  NOR2X1 U98 ( .A(n88), .B(n100), .Y(n101) );
  NOR2BX1 U99 ( .AN(DEL[5]), .B(OUT[5]), .Y(n104) );
  AOI211X1 U100 ( .A0(n89), .A1(n101), .B0(n88), .C0(n104), .Y(n90) );
  NOR3BXL U101 ( .AN(n106), .B(n105), .C(n90), .Y(n91) );
  NAND2X1 U102 ( .A(DEL[7]), .B(n165), .Y(n108) );
  NOR2X1 U103 ( .A(n165), .B(DEL[7]), .Y(n111) );
  AOI31X1 U104 ( .A0(n112), .A1(n92), .A2(n108), .B0(n111), .Y(n93) );
  NOR2BX1 U105 ( .AN(OUT[0]), .B(DEL[0]), .Y(n96) );
  OAI2BB1X1 U106 ( .A0N(n96), .A1N(OUT[1]), .B0(DEL[1]), .Y(n95) );
  OAI211X1 U107 ( .A0(OUT[1]), .A1(n96), .B0(n95), .C0(n94), .Y(n98) );
  NAND3BX1 U108 ( .AN(n99), .B(n98), .C(n97), .Y(n103) );
  AOI31X1 U109 ( .A0(n103), .A1(n102), .A2(n101), .B0(n100), .Y(n107) );
  AOI211X1 U110 ( .A0(n107), .A1(n106), .B0(n105), .C0(n104), .Y(n109) );
  OAI31XL U111 ( .A0(n111), .A1(n110), .A2(n109), .B0(n108), .Y(N7) );
  OAI211X1 U112 ( .A0(n172), .A1(n113), .B0(n114), .C0(n115), .Y(n173) );
  AOI2BB2X1 U113 ( .B0(NXT[0]), .B1(n116), .A0N(n6), .A1N(n117), .Y(n115) );
  NAND2BX1 U114 ( .AN(n118), .B(PRE[0]), .Y(n114) );
  OAI221XL U115 ( .A0(n171), .A1(n113), .B0(n118), .B1(n119), .C0(n120), .Y(
        n174) );
  AOI2BB2X1 U116 ( .B0(n116), .B1(NXT[1]), .A0N(n8), .A1N(n117), .Y(n120) );
  CLKINVX1 U117 ( .A(PRE[1]), .Y(n119) );
  OAI221XL U118 ( .A0(n170), .A1(n113), .B0(n121), .B1(n118), .C0(n122), .Y(
        n175) );
  AOI2BB2X1 U119 ( .B0(n116), .B1(NXT[2]), .A0N(n10), .A1N(n117), .Y(n122) );
  OAI221XL U120 ( .A0(n169), .A1(n113), .B0(n123), .B1(n118), .C0(n124), .Y(
        n176) );
  AOI2BB2X1 U121 ( .B0(n116), .B1(NXT[3]), .A0N(n12), .A1N(n117), .Y(n124) );
  OAI221XL U122 ( .A0(n168), .A1(n113), .B0(n125), .B1(n118), .C0(n126), .Y(
        n177) );
  AOI2BB2X1 U123 ( .B0(n116), .B1(NXT[4]), .A0N(n13), .A1N(n117), .Y(n126) );
  OAI221XL U124 ( .A0(n167), .A1(n113), .B0(n127), .B1(n118), .C0(n128), .Y(
        n178) );
  AOI2BB2X1 U125 ( .B0(n116), .B1(NXT[5]), .A0N(n14), .A1N(n117), .Y(n128) );
  OAI221XL U126 ( .A0(n166), .A1(n113), .B0(n129), .B1(n118), .C0(n130), .Y(
        n179) );
  AOI2BB2X1 U127 ( .B0(n116), .B1(NXT[6]), .A0N(n16), .A1N(n117), .Y(n130) );
  OAI221XL U128 ( .A0(n165), .A1(n113), .B0(n131), .B1(n118), .C0(n132), .Y(
        n180) );
  AOI2BB2X1 U129 ( .B0(n116), .B1(NXT[7]), .A0N(n18), .A1N(n117), .Y(n132) );
  NAND2X1 U130 ( .A(n133), .B(n134), .Y(n117) );
  MXI2X1 U131 ( .A(n135), .B(n136), .S0(n137), .Y(n133) );
  AND3X1 U132 ( .A(n134), .B(n137), .C(n138), .Y(n116) );
  NAND2X1 U133 ( .A(n139), .B(N3), .Y(n118) );
  AND2X1 U134 ( .A(n140), .B(n134), .Y(n113) );
  OR2X1 U135 ( .A(N4), .B(N3), .Y(n134) );
  MXI2X1 U136 ( .A(n141), .B(n142), .S0(n137), .Y(n140) );
  CLKINVX1 U137 ( .A(N3), .Y(n137) );
  NOR2BX1 U138 ( .AN(n136), .B(n138), .Y(n142) );
  AND3X1 U139 ( .A(N25), .B(n143), .C(N26), .Y(n138) );
  NAND3BX1 U140 ( .AN(n143), .B(N26), .C(N25), .Y(n136) );
  OAI21XL U141 ( .A0(NXT[7]), .A1(n18), .B0(n144), .Y(n143) );
  OAI2BB2XL U142 ( .B0(n145), .B1(n146), .A0N(n18), .A1N(NXT[7]), .Y(n144) );
  AOI221XL U143 ( .A0(NXT[6]), .A1(n16), .B0(NXT[5]), .B1(n14), .C0(n147), .Y(
        n146) );
  CLKINVX1 U144 ( .A(n148), .Y(n147) );
  OAI221XL U145 ( .A0(n14), .A1(NXT[5]), .B0(n13), .B1(NXT[4]), .C0(n149), .Y(
        n148) );
  CLKINVX1 U146 ( .A(n150), .Y(n149) );
  AOI221XL U147 ( .A0(NXT[4]), .A1(n13), .B0(NXT[3]), .B1(n12), .C0(n151), .Y(
        n150) );
  CLKINVX1 U148 ( .A(n152), .Y(n151) );
  OAI221XL U149 ( .A0(n12), .A1(NXT[3]), .B0(n10), .B1(NXT[2]), .C0(n153), .Y(
        n152) );
  CLKINVX1 U150 ( .A(n154), .Y(n153) );
  AOI222XL U151 ( .A0(NXT[2]), .A1(n10), .B0(NXT[1]), .B1(n155), .C0(n6), .C1(
        n8), .Y(n154) );
  NAND2X1 U152 ( .A(n7), .B(INS[0]), .Y(n155) );
  NOR2X1 U153 ( .A(NXT[6]), .B(n16), .Y(n145) );
  NOR2BX1 U154 ( .AN(n135), .B(n139), .Y(n141) );
  AND3X1 U155 ( .A(N6), .B(n156), .C(N7), .Y(n139) );
  NAND3BX1 U156 ( .AN(n156), .B(N6), .C(N7), .Y(n135) );
  OAI21XL U157 ( .A0(n17), .A1(n131), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(PRE[7]), .A1(n18), .B0(n158), .Y(n157) );
  OAI21XL U159 ( .A0(n15), .A1(n129), .B0(n159), .Y(n158) );
  OAI221XL U160 ( .A0(PRE[5]), .A1(n14), .B0(PRE[6]), .B1(n16), .C0(n160), .Y(
        n159) );
  OAI221XL U161 ( .A0(INS[4]), .A1(n125), .B0(INS[5]), .B1(n127), .C0(n161), 
        .Y(n160) );
  OAI221XL U162 ( .A0(PRE[3]), .A1(n12), .B0(PRE[4]), .B1(n13), .C0(n162), .Y(
        n161) );
  OAI221XL U163 ( .A0(n9), .A1(n121), .B0(n11), .B1(n123), .C0(n163), .Y(n162)
         );
  OAI222XL U164 ( .A0(n6), .A1(n8), .B0(PRE[1]), .B1(n164), .C0(PRE[2]), .C1(
        n10), .Y(n163) );
  NOR2X1 U165 ( .A(n7), .B(INS[0]), .Y(n164) );
  CLKINVX1 U166 ( .A(PRE[3]), .Y(n123) );
  CLKINVX1 U167 ( .A(PRE[2]), .Y(n121) );
  CLKINVX1 U168 ( .A(PRE[5]), .Y(n127) );
  CLKINVX1 U169 ( .A(PRE[4]), .Y(n125) );
  CLKINVX1 U170 ( .A(PRE[6]), .Y(n129) );
  CLKINVX1 U171 ( .A(PRE[7]), .Y(n131) );
endmodule


module COMPARE_19 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  CLKINVX1 U2 ( .A(INS[0]), .Y(n6) );
  CLKINVX1 U3 ( .A(n23), .Y(n45) );
  CLKINVX1 U4 ( .A(n21), .Y(n44) );
  CLKINVX1 U5 ( .A(n26), .Y(n46) );
  CLKINVX1 U6 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U7 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U8 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U9 ( .A(DEL[6]), .Y(n5) );
  CLKINVX1 U10 ( .A(n8), .Y(n9) );
  CLKINVX1 U11 ( .A(n10), .Y(n11) );
  CLKINVX1 U12 ( .A(n3), .Y(n4) );
  CLKINVX1 U13 ( .A(n1), .Y(n2) );
  CLKINVX1 U14 ( .A(n14), .Y(n15) );
  CLKINVX1 U15 ( .A(n16), .Y(n17) );
  CLKINVX1 U16 ( .A(RST), .Y(n18) );
  CLKBUFX3 U17 ( .A(DEL[2]), .Y(n1) );
  CLKBUFX3 U18 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U21 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U22 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U23 ( .A(n92), .Y(N26) );
  CLKINVX1 U24 ( .A(n90), .Y(n111) );
  CLKINVX1 U25 ( .A(n51), .Y(n81) );
  CLKINVX1 U26 ( .A(n49), .Y(n80) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module COMPARE_18 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  CLKINVX1 U2 ( .A(INS[0]), .Y(n6) );
  CLKINVX1 U3 ( .A(n23), .Y(n45) );
  CLKINVX1 U4 ( .A(n21), .Y(n44) );
  CLKINVX1 U5 ( .A(n26), .Y(n46) );
  CLKINVX1 U6 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U7 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U8 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U9 ( .A(DEL[6]), .Y(n5) );
  CLKINVX1 U10 ( .A(n8), .Y(n9) );
  CLKINVX1 U11 ( .A(n10), .Y(n11) );
  CLKINVX1 U12 ( .A(n3), .Y(n4) );
  CLKINVX1 U13 ( .A(n1), .Y(n2) );
  CLKINVX1 U14 ( .A(n14), .Y(n15) );
  CLKINVX1 U15 ( .A(n16), .Y(n17) );
  CLKINVX1 U16 ( .A(RST), .Y(n18) );
  CLKBUFX3 U17 ( .A(DEL[2]), .Y(n1) );
  CLKBUFX3 U18 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U21 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U22 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U23 ( .A(n92), .Y(N26) );
  CLKINVX1 U24 ( .A(n90), .Y(n111) );
  CLKINVX1 U25 ( .A(n51), .Y(n81) );
  CLKINVX1 U26 ( .A(n49), .Y(n80) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module COMPARE_17 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  CLKINVX1 U2 ( .A(INS[0]), .Y(n6) );
  CLKINVX1 U3 ( .A(n23), .Y(n45) );
  CLKINVX1 U4 ( .A(n21), .Y(n44) );
  CLKINVX1 U5 ( .A(n26), .Y(n46) );
  CLKINVX1 U6 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U7 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U8 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U9 ( .A(DEL[6]), .Y(n5) );
  CLKINVX1 U10 ( .A(n8), .Y(n9) );
  CLKINVX1 U11 ( .A(n10), .Y(n11) );
  CLKINVX1 U12 ( .A(n3), .Y(n4) );
  CLKINVX1 U13 ( .A(n1), .Y(n2) );
  CLKINVX1 U14 ( .A(n14), .Y(n15) );
  CLKINVX1 U15 ( .A(n16), .Y(n17) );
  CLKINVX1 U16 ( .A(RST), .Y(n18) );
  CLKBUFX3 U17 ( .A(DEL[2]), .Y(n1) );
  CLKBUFX3 U18 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U21 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U22 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U23 ( .A(n92), .Y(N26) );
  CLKINVX1 U24 ( .A(n90), .Y(n111) );
  CLKINVX1 U25 ( .A(n51), .Y(n81) );
  CLKINVX1 U26 ( .A(n49), .Y(n80) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module COMPARE_16 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  CLKINVX1 U2 ( .A(INS[0]), .Y(n6) );
  CLKINVX1 U3 ( .A(n23), .Y(n45) );
  CLKINVX1 U4 ( .A(n21), .Y(n44) );
  CLKINVX1 U5 ( .A(n26), .Y(n46) );
  CLKINVX1 U6 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U7 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U8 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U9 ( .A(DEL[6]), .Y(n5) );
  CLKINVX1 U10 ( .A(n8), .Y(n9) );
  CLKINVX1 U11 ( .A(n10), .Y(n11) );
  CLKINVX1 U12 ( .A(n3), .Y(n4) );
  CLKINVX1 U13 ( .A(n1), .Y(n2) );
  CLKINVX1 U14 ( .A(n14), .Y(n15) );
  CLKINVX1 U15 ( .A(n16), .Y(n17) );
  CLKINVX1 U16 ( .A(RST), .Y(n18) );
  CLKBUFX3 U17 ( .A(DEL[2]), .Y(n1) );
  CLKBUFX3 U18 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U21 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U22 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U23 ( .A(n92), .Y(N26) );
  CLKINVX1 U24 ( .A(n90), .Y(n111) );
  CLKINVX1 U25 ( .A(n51), .Y(n81) );
  CLKINVX1 U26 ( .A(n49), .Y(n80) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module COMPARE_15 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  CLKINVX1 U2 ( .A(INS[0]), .Y(n6) );
  CLKINVX1 U3 ( .A(n23), .Y(n45) );
  CLKINVX1 U4 ( .A(n21), .Y(n44) );
  CLKINVX1 U5 ( .A(n26), .Y(n46) );
  CLKINVX1 U6 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U7 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U8 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U9 ( .A(DEL[6]), .Y(n5) );
  CLKINVX1 U10 ( .A(n8), .Y(n9) );
  CLKINVX1 U11 ( .A(n10), .Y(n11) );
  CLKINVX1 U12 ( .A(n3), .Y(n4) );
  CLKINVX1 U13 ( .A(n1), .Y(n2) );
  CLKINVX1 U14 ( .A(n14), .Y(n15) );
  CLKINVX1 U15 ( .A(n16), .Y(n17) );
  CLKINVX1 U16 ( .A(RST), .Y(n18) );
  CLKBUFX3 U17 ( .A(DEL[2]), .Y(n1) );
  CLKBUFX3 U18 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U21 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U22 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U23 ( .A(n92), .Y(N26) );
  CLKINVX1 U24 ( .A(n90), .Y(n111) );
  CLKINVX1 U25 ( .A(n51), .Y(n81) );
  CLKINVX1 U26 ( .A(n49), .Y(n80) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module COMPARE_14 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  CLKINVX1 U2 ( .A(INS[0]), .Y(n6) );
  CLKINVX1 U3 ( .A(n23), .Y(n45) );
  CLKINVX1 U4 ( .A(n21), .Y(n44) );
  CLKINVX1 U5 ( .A(n26), .Y(n46) );
  CLKINVX1 U6 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U7 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U8 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U9 ( .A(DEL[6]), .Y(n5) );
  CLKINVX1 U10 ( .A(n8), .Y(n9) );
  CLKINVX1 U11 ( .A(n10), .Y(n11) );
  CLKINVX1 U12 ( .A(n3), .Y(n4) );
  CLKINVX1 U13 ( .A(n1), .Y(n2) );
  CLKINVX1 U14 ( .A(n14), .Y(n15) );
  CLKINVX1 U15 ( .A(n16), .Y(n17) );
  CLKINVX1 U16 ( .A(RST), .Y(n18) );
  CLKBUFX3 U17 ( .A(DEL[2]), .Y(n1) );
  CLKBUFX3 U18 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U21 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U22 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U23 ( .A(n92), .Y(N26) );
  CLKINVX1 U24 ( .A(n90), .Y(n111) );
  CLKINVX1 U25 ( .A(n51), .Y(n81) );
  CLKINVX1 U26 ( .A(n49), .Y(n80) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module COMPARE_13 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  CLKINVX1 U2 ( .A(INS[0]), .Y(n6) );
  CLKINVX1 U3 ( .A(n23), .Y(n45) );
  CLKINVX1 U4 ( .A(n21), .Y(n44) );
  CLKINVX1 U5 ( .A(n26), .Y(n46) );
  CLKINVX1 U6 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U7 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U8 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U9 ( .A(DEL[6]), .Y(n5) );
  CLKINVX1 U10 ( .A(n8), .Y(n9) );
  CLKINVX1 U11 ( .A(n10), .Y(n11) );
  CLKINVX1 U12 ( .A(n3), .Y(n4) );
  CLKINVX1 U13 ( .A(n1), .Y(n2) );
  CLKINVX1 U14 ( .A(n14), .Y(n15) );
  CLKINVX1 U15 ( .A(n16), .Y(n17) );
  CLKINVX1 U16 ( .A(RST), .Y(n18) );
  CLKBUFX3 U17 ( .A(DEL[2]), .Y(n1) );
  CLKBUFX3 U18 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U21 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U22 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U23 ( .A(n92), .Y(N26) );
  CLKINVX1 U24 ( .A(n90), .Y(n111) );
  CLKINVX1 U25 ( .A(n51), .Y(n81) );
  CLKINVX1 U26 ( .A(n49), .Y(n80) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module COMPARE_12 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  CLKINVX1 U2 ( .A(INS[0]), .Y(n6) );
  CLKINVX1 U3 ( .A(n23), .Y(n45) );
  CLKINVX1 U4 ( .A(n21), .Y(n44) );
  CLKINVX1 U5 ( .A(n26), .Y(n46) );
  CLKINVX1 U6 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U7 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U8 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U9 ( .A(DEL[6]), .Y(n5) );
  CLKINVX1 U10 ( .A(n8), .Y(n9) );
  CLKINVX1 U11 ( .A(n10), .Y(n11) );
  CLKINVX1 U12 ( .A(n3), .Y(n4) );
  CLKINVX1 U13 ( .A(n1), .Y(n2) );
  CLKINVX1 U14 ( .A(n14), .Y(n15) );
  CLKINVX1 U15 ( .A(n16), .Y(n17) );
  CLKINVX1 U16 ( .A(RST), .Y(n18) );
  CLKBUFX3 U17 ( .A(DEL[2]), .Y(n1) );
  CLKBUFX3 U18 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U21 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U22 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U23 ( .A(n92), .Y(N26) );
  CLKINVX1 U24 ( .A(n90), .Y(n111) );
  CLKINVX1 U25 ( .A(n51), .Y(n81) );
  CLKINVX1 U26 ( .A(n49), .Y(n80) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module COMPARE_11 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  CLKINVX1 U2 ( .A(INS[0]), .Y(n6) );
  CLKINVX1 U3 ( .A(n23), .Y(n45) );
  CLKINVX1 U4 ( .A(n21), .Y(n44) );
  CLKINVX1 U5 ( .A(n26), .Y(n46) );
  CLKINVX1 U6 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U7 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U8 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U9 ( .A(DEL[6]), .Y(n5) );
  CLKINVX1 U10 ( .A(n8), .Y(n9) );
  CLKINVX1 U11 ( .A(n10), .Y(n11) );
  CLKINVX1 U12 ( .A(n3), .Y(n4) );
  CLKINVX1 U13 ( .A(n1), .Y(n2) );
  CLKINVX1 U14 ( .A(n14), .Y(n15) );
  CLKINVX1 U15 ( .A(n16), .Y(n17) );
  CLKINVX1 U16 ( .A(RST), .Y(n18) );
  CLKBUFX3 U17 ( .A(DEL[2]), .Y(n1) );
  CLKBUFX3 U18 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U21 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U22 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U23 ( .A(n92), .Y(N26) );
  CLKINVX1 U24 ( .A(n90), .Y(n111) );
  CLKINVX1 U25 ( .A(n51), .Y(n81) );
  CLKINVX1 U26 ( .A(n49), .Y(n80) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module COMPARE_10 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  CLKINVX1 U2 ( .A(INS[0]), .Y(n6) );
  CLKINVX1 U3 ( .A(n23), .Y(n45) );
  CLKINVX1 U4 ( .A(n21), .Y(n44) );
  CLKINVX1 U5 ( .A(n26), .Y(n46) );
  CLKINVX1 U6 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U7 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U8 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U9 ( .A(DEL[6]), .Y(n5) );
  CLKINVX1 U10 ( .A(n8), .Y(n9) );
  CLKINVX1 U11 ( .A(n10), .Y(n11) );
  CLKINVX1 U12 ( .A(n3), .Y(n4) );
  CLKINVX1 U13 ( .A(n1), .Y(n2) );
  CLKINVX1 U14 ( .A(n14), .Y(n15) );
  CLKINVX1 U15 ( .A(n16), .Y(n17) );
  CLKINVX1 U16 ( .A(RST), .Y(n18) );
  CLKBUFX3 U17 ( .A(DEL[2]), .Y(n1) );
  CLKBUFX3 U18 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U21 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U22 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U23 ( .A(n92), .Y(N26) );
  CLKINVX1 U24 ( .A(n90), .Y(n111) );
  CLKINVX1 U25 ( .A(n51), .Y(n81) );
  CLKINVX1 U26 ( .A(n49), .Y(n80) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module COMPARE_9 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182;

  DFFSX1 \OUT_reg[7]  ( .D(n182), .CK(clk), .SN(n21), .Q(OUT[7]), .QN(n167) );
  DFFSX1 \OUT_reg[0]  ( .D(n175), .CK(clk), .SN(n21), .Q(OUT[0]), .QN(n174) );
  DFFSX1 \OUT_reg[4]  ( .D(n179), .CK(clk), .SN(n21), .Q(OUT[4]), .QN(n170) );
  DFFSX1 \OUT_reg[2]  ( .D(n177), .CK(clk), .SN(n21), .Q(OUT[2]), .QN(n172) );
  DFFSX1 \OUT_reg[5]  ( .D(n180), .CK(clk), .SN(n21), .Q(OUT[5]), .QN(n169) );
  DFFSX1 \OUT_reg[3]  ( .D(n178), .CK(clk), .SN(n21), .Q(OUT[3]), .QN(n171) );
  DFFSX1 \OUT_reg[6]  ( .D(n181), .CK(clk), .SN(n21), .Q(OUT[6]), .QN(n168) );
  DFFSX1 \OUT_reg[1]  ( .D(n176), .CK(clk), .SN(n21), .Q(OUT[1]), .QN(n173) );
  CLKINVX1 U2 ( .A(n26), .Y(n48) );
  CLKINVX1 U3 ( .A(n24), .Y(n47) );
  CLKINVX1 U4 ( .A(n29), .Y(n49) );
  CLKINVX1 U5 ( .A(n9), .Y(n8) );
  CLKINVX1 U6 ( .A(n16), .Y(n15) );
  CLKINVX1 U7 ( .A(n6), .Y(n5) );
  CLKINVX1 U8 ( .A(n10), .Y(n11) );
  CLKINVX1 U9 ( .A(n12), .Y(n13) );
  CLKINVX1 U10 ( .A(n3), .Y(n4) );
  CLKINVX1 U11 ( .A(n1), .Y(n2) );
  CLKINVX1 U12 ( .A(n17), .Y(n18) );
  CLKINVX1 U13 ( .A(n19), .Y(n20) );
  CLKINVX1 U14 ( .A(INS[0]), .Y(n7) );
  CLKBUFX3 U15 ( .A(DEL[2]), .Y(n1) );
  CLKINVX1 U16 ( .A(INS[1]), .Y(n9) );
  CLKINVX1 U17 ( .A(INS[4]), .Y(n14) );
  CLKINVX1 U18 ( .A(INS[5]), .Y(n16) );
  CLKINVX1 U19 ( .A(DEL[6]), .Y(n6) );
  CLKBUFX3 U20 ( .A(INS[6]), .Y(n17) );
  CLKBUFX3 U21 ( .A(INS[2]), .Y(n10) );
  CLKBUFX3 U22 ( .A(INS[3]), .Y(n12) );
  CLKBUFX3 U23 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U24 ( .A(INS[7]), .Y(n19) );
  CLKINVX1 U25 ( .A(n95), .Y(N26) );
  CLKINVX1 U26 ( .A(n93), .Y(n114) );
  CLKINVX1 U27 ( .A(n54), .Y(n84) );
  CLKINVX1 U28 ( .A(n52), .Y(n83) );
  CLKINVX1 U29 ( .A(RST), .Y(n21) );
  CLKINVX1 U30 ( .A(n57), .Y(n85) );
  NAND2X1 U31 ( .A(DEL[7]), .B(n20), .Y(n44) );
  NAND2BX1 U32 ( .AN(DEL[4]), .B(INS[4]), .Y(n27) );
  NAND2BX1 U33 ( .AN(INS[4]), .B(DEL[4]), .Y(n38) );
  NAND2X1 U34 ( .A(n27), .B(n38), .Y(n40) );
  NAND2BX1 U35 ( .AN(DEL[0]), .B(INS[0]), .Y(n23) );
  NOR2X1 U36 ( .A(n2), .B(n10), .Y(n35) );
  NAND2X1 U37 ( .A(n10), .B(n2), .Y(n25) );
  NAND2BX1 U38 ( .AN(n35), .B(n25), .Y(n31) );
  OA21XL U39 ( .A0(n23), .A1(n9), .B0(DEL[1]), .Y(n22) );
  AOI211X1 U40 ( .A0(n23), .A1(n9), .B0(n31), .C0(n22), .Y(n24) );
  NAND2X1 U41 ( .A(n12), .B(n4), .Y(n33) );
  NOR2X1 U42 ( .A(n4), .B(n12), .Y(n36) );
  AOI31X1 U43 ( .A0(n47), .A1(n25), .A2(n33), .B0(n36), .Y(n26) );
  NAND2BX1 U44 ( .AN(DEL[5]), .B(n15), .Y(n42) );
  OAI211X1 U45 ( .A0(n40), .A1(n48), .B0(n42), .C0(n27), .Y(n28) );
  NAND2BX1 U46 ( .AN(n15), .B(DEL[5]), .Y(n37) );
  XOR2X1 U47 ( .A(n18), .B(n5), .Y(n41) );
  AOI32X1 U48 ( .A0(n28), .A1(n37), .A2(n41), .B0(n17), .B1(n6), .Y(n29) );
  NOR2X1 U49 ( .A(n20), .B(DEL[7]), .Y(n46) );
  AO21X1 U50 ( .A0(n44), .A1(n49), .B0(n46), .Y(N4) );
  NAND2BX1 U51 ( .AN(INS[0]), .B(DEL[0]), .Y(n32) );
  AOI2BB1X1 U52 ( .A0N(n32), .A1N(n8), .B0(DEL[1]), .Y(n30) );
  AOI211X1 U53 ( .A0(n8), .A1(n32), .B0(n31), .C0(n30), .Y(n34) );
  OAI31XL U54 ( .A0(n36), .A1(n35), .A2(n34), .B0(n33), .Y(n39) );
  OAI211X1 U55 ( .A0(n40), .A1(n39), .B0(n38), .C0(n37), .Y(n43) );
  AOI32X1 U56 ( .A0(n43), .A1(n42), .A2(n41), .B0(n5), .B1(n18), .Y(n45) );
  OAI21XL U57 ( .A0(n46), .A1(n45), .B0(n44), .Y(N3) );
  NAND2X1 U58 ( .A(n19), .B(n167), .Y(n80) );
  NAND2BX1 U59 ( .AN(INS[4]), .B(OUT[4]), .Y(n55) );
  NAND2BX1 U60 ( .AN(OUT[4]), .B(INS[4]), .Y(n74) );
  NAND2X1 U61 ( .A(n55), .B(n74), .Y(n76) );
  NAND2BX1 U62 ( .AN(INS[0]), .B(OUT[0]), .Y(n51) );
  NOR2X1 U63 ( .A(n11), .B(OUT[2]), .Y(n71) );
  NAND2X1 U64 ( .A(OUT[2]), .B(n11), .Y(n53) );
  NAND2BX1 U65 ( .AN(n71), .B(n53), .Y(n59) );
  OA21XL U66 ( .A0(n51), .A1(n173), .B0(n8), .Y(n50) );
  AOI211X1 U67 ( .A0(n51), .A1(n173), .B0(n59), .C0(n50), .Y(n52) );
  NAND2X1 U68 ( .A(OUT[3]), .B(n13), .Y(n61) );
  NOR2X1 U69 ( .A(n13), .B(OUT[3]), .Y(n72) );
  AOI31X1 U70 ( .A0(n83), .A1(n53), .A2(n61), .B0(n72), .Y(n54) );
  NAND2BX1 U71 ( .AN(n15), .B(OUT[5]), .Y(n78) );
  OAI211X1 U72 ( .A0(n76), .A1(n84), .B0(n78), .C0(n55), .Y(n56) );
  NAND2BX1 U73 ( .AN(OUT[5]), .B(n15), .Y(n73) );
  XOR2X1 U74 ( .A(n168), .B(n17), .Y(n77) );
  AOI32X1 U75 ( .A0(n56), .A1(n73), .A2(n77), .B0(OUT[6]), .B1(n18), .Y(n57)
         );
  NOR2X1 U76 ( .A(n167), .B(n19), .Y(n82) );
  AO21X1 U77 ( .A0(n80), .A1(n85), .B0(n82), .Y(N6) );
  NAND2BX1 U78 ( .AN(OUT[0]), .B(INS[0]), .Y(n60) );
  AOI2BB1X1 U79 ( .A0N(n60), .A1N(OUT[1]), .B0(n8), .Y(n58) );
  AOI211X1 U80 ( .A0(OUT[1]), .A1(n60), .B0(n59), .C0(n58), .Y(n70) );
  OAI31XL U81 ( .A0(n72), .A1(n71), .A2(n70), .B0(n61), .Y(n75) );
  OAI211X1 U82 ( .A0(n76), .A1(n75), .B0(n74), .C0(n73), .Y(n79) );
  AOI32X1 U83 ( .A0(n79), .A1(n78), .A2(n77), .B0(n17), .B1(n168), .Y(n81) );
  OAI21XL U84 ( .A0(n82), .A1(n81), .B0(n80), .Y(N25) );
  NAND2BX1 U85 ( .AN(DEL[5]), .B(OUT[5]), .Y(n108) );
  NOR2X1 U86 ( .A(n168), .B(n5), .Y(n112) );
  NAND2X1 U87 ( .A(n5), .B(n168), .Y(n94) );
  NAND2BX1 U88 ( .AN(n112), .B(n94), .Y(n107) );
  NAND2X1 U89 ( .A(n3), .B(n171), .Y(n104) );
  NAND2BX1 U90 ( .AN(OUT[2]), .B(n1), .Y(n89) );
  NOR2BX1 U91 ( .AN(DEL[0]), .B(OUT[0]), .Y(n87) );
  AO21X1 U92 ( .A0(n173), .A1(n87), .B0(DEL[1]), .Y(n86) );
  NAND2BX1 U93 ( .AN(n1), .B(OUT[2]), .Y(n99) );
  AND2X1 U94 ( .A(n89), .B(n99), .Y(n96) );
  OAI211X1 U95 ( .A0(n87), .A1(n173), .B0(n86), .C0(n96), .Y(n88) );
  NOR2X1 U96 ( .A(n171), .B(n3), .Y(n101) );
  AOI31X1 U97 ( .A0(n104), .A1(n89), .A2(n88), .B0(n101), .Y(n91) );
  NOR2BX1 U98 ( .AN(DEL[4]), .B(OUT[4]), .Y(n90) );
  NOR2BX1 U99 ( .AN(OUT[4]), .B(DEL[4]), .Y(n102) );
  NOR2X1 U100 ( .A(n90), .B(n102), .Y(n103) );
  NOR2BX1 U101 ( .AN(DEL[5]), .B(OUT[5]), .Y(n106) );
  AOI211X1 U102 ( .A0(n91), .A1(n103), .B0(n90), .C0(n106), .Y(n92) );
  NOR3BXL U103 ( .AN(n108), .B(n107), .C(n92), .Y(n93) );
  NAND2X1 U104 ( .A(DEL[7]), .B(n167), .Y(n110) );
  NOR2X1 U105 ( .A(n167), .B(DEL[7]), .Y(n113) );
  AOI31X1 U106 ( .A0(n114), .A1(n94), .A2(n110), .B0(n113), .Y(n95) );
  NOR2BX1 U107 ( .AN(OUT[0]), .B(DEL[0]), .Y(n98) );
  OAI2BB1X1 U108 ( .A0N(n98), .A1N(OUT[1]), .B0(DEL[1]), .Y(n97) );
  OAI211X1 U109 ( .A0(OUT[1]), .A1(n98), .B0(n97), .C0(n96), .Y(n100) );
  NAND3BX1 U110 ( .AN(n101), .B(n100), .C(n99), .Y(n105) );
  AOI31X1 U111 ( .A0(n105), .A1(n104), .A2(n103), .B0(n102), .Y(n109) );
  AOI211X1 U112 ( .A0(n109), .A1(n108), .B0(n107), .C0(n106), .Y(n111) );
  OAI31XL U113 ( .A0(n113), .A1(n112), .A2(n111), .B0(n110), .Y(N7) );
  OAI211X1 U114 ( .A0(n174), .A1(n115), .B0(n116), .C0(n117), .Y(n175) );
  AOI2BB2X1 U115 ( .B0(NXT[0]), .B1(n118), .A0N(n7), .A1N(n119), .Y(n117) );
  NAND2BX1 U116 ( .AN(n120), .B(PRE[0]), .Y(n116) );
  OAI221XL U117 ( .A0(n173), .A1(n115), .B0(n120), .B1(n121), .C0(n122), .Y(
        n176) );
  AOI2BB2X1 U118 ( .B0(n118), .B1(NXT[1]), .A0N(n9), .A1N(n119), .Y(n122) );
  CLKINVX1 U119 ( .A(PRE[1]), .Y(n121) );
  OAI221XL U120 ( .A0(n172), .A1(n115), .B0(n123), .B1(n120), .C0(n124), .Y(
        n177) );
  AOI2BB2X1 U121 ( .B0(n118), .B1(NXT[2]), .A0N(n11), .A1N(n119), .Y(n124) );
  OAI221XL U122 ( .A0(n171), .A1(n115), .B0(n125), .B1(n120), .C0(n126), .Y(
        n178) );
  AOI2BB2X1 U123 ( .B0(n118), .B1(NXT[3]), .A0N(n13), .A1N(n119), .Y(n126) );
  OAI221XL U124 ( .A0(n170), .A1(n115), .B0(n127), .B1(n120), .C0(n128), .Y(
        n179) );
  AOI2BB2X1 U125 ( .B0(n118), .B1(NXT[4]), .A0N(n14), .A1N(n119), .Y(n128) );
  OAI221XL U126 ( .A0(n169), .A1(n115), .B0(n129), .B1(n120), .C0(n130), .Y(
        n180) );
  AOI2BB2X1 U127 ( .B0(n118), .B1(NXT[5]), .A0N(n16), .A1N(n119), .Y(n130) );
  OAI221XL U128 ( .A0(n168), .A1(n115), .B0(n131), .B1(n120), .C0(n132), .Y(
        n181) );
  AOI2BB2X1 U129 ( .B0(n118), .B1(NXT[6]), .A0N(n18), .A1N(n119), .Y(n132) );
  OAI221XL U130 ( .A0(n167), .A1(n115), .B0(n133), .B1(n120), .C0(n134), .Y(
        n182) );
  AOI2BB2X1 U131 ( .B0(n118), .B1(NXT[7]), .A0N(n20), .A1N(n119), .Y(n134) );
  NAND2X1 U132 ( .A(n135), .B(n136), .Y(n119) );
  MXI2X1 U133 ( .A(n137), .B(n138), .S0(n139), .Y(n135) );
  AND3X1 U134 ( .A(n136), .B(n139), .C(n140), .Y(n118) );
  NAND2X1 U135 ( .A(n141), .B(N3), .Y(n120) );
  AND2X1 U136 ( .A(n142), .B(n136), .Y(n115) );
  OR2X1 U137 ( .A(N4), .B(N3), .Y(n136) );
  MXI2X1 U138 ( .A(n143), .B(n144), .S0(n139), .Y(n142) );
  CLKINVX1 U139 ( .A(N3), .Y(n139) );
  NOR2BX1 U140 ( .AN(n138), .B(n140), .Y(n144) );
  AND3X1 U141 ( .A(N25), .B(n145), .C(N26), .Y(n140) );
  NAND3BX1 U142 ( .AN(n145), .B(N26), .C(N25), .Y(n138) );
  OAI21XL U143 ( .A0(NXT[7]), .A1(n20), .B0(n146), .Y(n145) );
  OAI2BB2XL U144 ( .B0(n147), .B1(n148), .A0N(n20), .A1N(NXT[7]), .Y(n146) );
  AOI221XL U145 ( .A0(NXT[6]), .A1(n18), .B0(NXT[5]), .B1(n16), .C0(n149), .Y(
        n148) );
  CLKINVX1 U146 ( .A(n150), .Y(n149) );
  OAI221XL U147 ( .A0(n16), .A1(NXT[5]), .B0(n14), .B1(NXT[4]), .C0(n151), .Y(
        n150) );
  CLKINVX1 U148 ( .A(n152), .Y(n151) );
  AOI221XL U149 ( .A0(NXT[4]), .A1(n14), .B0(NXT[3]), .B1(n13), .C0(n153), .Y(
        n152) );
  CLKINVX1 U150 ( .A(n154), .Y(n153) );
  OAI221XL U151 ( .A0(n13), .A1(NXT[3]), .B0(n11), .B1(NXT[2]), .C0(n155), .Y(
        n154) );
  CLKINVX1 U152 ( .A(n156), .Y(n155) );
  AOI222XL U153 ( .A0(NXT[2]), .A1(n11), .B0(NXT[1]), .B1(n157), .C0(n7), .C1(
        n9), .Y(n156) );
  NAND2X1 U154 ( .A(n8), .B(INS[0]), .Y(n157) );
  NOR2X1 U155 ( .A(NXT[6]), .B(n18), .Y(n147) );
  NOR2BX1 U156 ( .AN(n137), .B(n141), .Y(n143) );
  AND3X1 U157 ( .A(N6), .B(n158), .C(N7), .Y(n141) );
  NAND3BX1 U158 ( .AN(n158), .B(N6), .C(N7), .Y(n137) );
  OAI21XL U159 ( .A0(n19), .A1(n133), .B0(n159), .Y(n158) );
  OAI21XL U160 ( .A0(PRE[7]), .A1(n20), .B0(n160), .Y(n159) );
  OAI21XL U161 ( .A0(n17), .A1(n131), .B0(n161), .Y(n160) );
  OAI221XL U162 ( .A0(PRE[5]), .A1(n16), .B0(PRE[6]), .B1(n18), .C0(n162), .Y(
        n161) );
  OAI221XL U163 ( .A0(INS[4]), .A1(n127), .B0(n15), .B1(n129), .C0(n163), .Y(
        n162) );
  OAI221XL U164 ( .A0(PRE[3]), .A1(n13), .B0(PRE[4]), .B1(n14), .C0(n164), .Y(
        n163) );
  OAI221XL U165 ( .A0(n10), .A1(n123), .B0(n12), .B1(n125), .C0(n165), .Y(n164) );
  OAI222XL U166 ( .A0(n7), .A1(n9), .B0(PRE[1]), .B1(n166), .C0(PRE[2]), .C1(
        n11), .Y(n165) );
  NOR2X1 U167 ( .A(n8), .B(INS[0]), .Y(n166) );
  CLKINVX1 U168 ( .A(PRE[3]), .Y(n125) );
  CLKINVX1 U169 ( .A(PRE[2]), .Y(n123) );
  CLKINVX1 U170 ( .A(PRE[5]), .Y(n129) );
  CLKINVX1 U171 ( .A(PRE[4]), .Y(n127) );
  CLKINVX1 U172 ( .A(PRE[6]), .Y(n131) );
  CLKINVX1 U173 ( .A(PRE[7]), .Y(n133) );
endmodule


module COMPARE_8 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181;

  DFFSX1 \OUT_reg[7]  ( .D(n181), .CK(clk), .SN(n20), .Q(OUT[7]), .QN(n166) );
  DFFSX1 \OUT_reg[0]  ( .D(n174), .CK(clk), .SN(n20), .Q(OUT[0]), .QN(n173) );
  DFFSX1 \OUT_reg[4]  ( .D(n178), .CK(clk), .SN(n20), .Q(OUT[4]), .QN(n169) );
  DFFSX1 \OUT_reg[2]  ( .D(n176), .CK(clk), .SN(n20), .Q(OUT[2]), .QN(n171) );
  DFFSX1 \OUT_reg[5]  ( .D(n179), .CK(clk), .SN(n20), .Q(OUT[5]), .QN(n168) );
  DFFSX1 \OUT_reg[3]  ( .D(n177), .CK(clk), .SN(n20), .Q(OUT[3]), .QN(n170) );
  DFFSX1 \OUT_reg[6]  ( .D(n180), .CK(clk), .SN(n20), .Q(OUT[6]), .QN(n167) );
  DFFSX1 \OUT_reg[1]  ( .D(n175), .CK(clk), .SN(n20), .Q(OUT[1]), .QN(n172) );
  CLKINVX1 U2 ( .A(n25), .Y(n47) );
  CLKINVX1 U3 ( .A(n23), .Y(n46) );
  CLKINVX1 U4 ( .A(n28), .Y(n48) );
  CLKINVX1 U5 ( .A(n8), .Y(n7) );
  CLKINVX1 U6 ( .A(n15), .Y(n14) );
  CLKINVX1 U7 ( .A(n9), .Y(n10) );
  CLKINVX1 U8 ( .A(n11), .Y(n12) );
  CLKINVX1 U9 ( .A(n3), .Y(n4) );
  CLKINVX1 U10 ( .A(n1), .Y(n2) );
  CLKINVX1 U11 ( .A(n16), .Y(n17) );
  CLKINVX1 U12 ( .A(n18), .Y(n19) );
  CLKINVX1 U13 ( .A(INS[0]), .Y(n6) );
  CLKBUFX3 U14 ( .A(DEL[2]), .Y(n1) );
  CLKINVX1 U15 ( .A(INS[1]), .Y(n8) );
  CLKINVX1 U16 ( .A(INS[4]), .Y(n13) );
  CLKINVX1 U17 ( .A(INS[5]), .Y(n15) );
  CLKINVX1 U18 ( .A(DEL[6]), .Y(n5) );
  CLKBUFX3 U19 ( .A(INS[6]), .Y(n16) );
  CLKBUFX3 U20 ( .A(INS[2]), .Y(n9) );
  CLKBUFX3 U21 ( .A(INS[3]), .Y(n11) );
  CLKBUFX3 U22 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U23 ( .A(INS[7]), .Y(n18) );
  CLKINVX1 U24 ( .A(n94), .Y(N26) );
  CLKINVX1 U25 ( .A(n92), .Y(n113) );
  CLKINVX1 U26 ( .A(n53), .Y(n83) );
  CLKINVX1 U27 ( .A(n51), .Y(n82) );
  CLKINVX1 U28 ( .A(RST), .Y(n20) );
  CLKINVX1 U29 ( .A(n56), .Y(n84) );
  NAND2X1 U30 ( .A(DEL[7]), .B(n19), .Y(n43) );
  NAND2BX1 U31 ( .AN(DEL[4]), .B(INS[4]), .Y(n26) );
  NAND2BX1 U32 ( .AN(INS[4]), .B(DEL[4]), .Y(n37) );
  NAND2X1 U33 ( .A(n26), .B(n37), .Y(n39) );
  NAND2BX1 U34 ( .AN(DEL[0]), .B(INS[0]), .Y(n22) );
  NOR2X1 U35 ( .A(n2), .B(n9), .Y(n34) );
  NAND2X1 U36 ( .A(n9), .B(n2), .Y(n24) );
  NAND2BX1 U37 ( .AN(n34), .B(n24), .Y(n30) );
  OA21XL U38 ( .A0(n22), .A1(n8), .B0(DEL[1]), .Y(n21) );
  AOI211X1 U39 ( .A0(n22), .A1(n8), .B0(n30), .C0(n21), .Y(n23) );
  NAND2X1 U40 ( .A(n11), .B(n4), .Y(n32) );
  NOR2X1 U41 ( .A(n4), .B(n11), .Y(n35) );
  AOI31X1 U42 ( .A0(n46), .A1(n24), .A2(n32), .B0(n35), .Y(n25) );
  NAND2BX1 U43 ( .AN(DEL[5]), .B(n14), .Y(n41) );
  OAI211X1 U44 ( .A0(n39), .A1(n47), .B0(n41), .C0(n26), .Y(n27) );
  NAND2BX1 U45 ( .AN(n14), .B(DEL[5]), .Y(n36) );
  XOR2X1 U46 ( .A(n17), .B(DEL[6]), .Y(n40) );
  AOI32X1 U47 ( .A0(n27), .A1(n36), .A2(n40), .B0(n16), .B1(n5), .Y(n28) );
  NOR2X1 U48 ( .A(n19), .B(DEL[7]), .Y(n45) );
  AO21X1 U49 ( .A0(n43), .A1(n48), .B0(n45), .Y(N4) );
  NAND2BX1 U50 ( .AN(INS[0]), .B(DEL[0]), .Y(n31) );
  AOI2BB1X1 U51 ( .A0N(n31), .A1N(n7), .B0(DEL[1]), .Y(n29) );
  AOI211X1 U52 ( .A0(n7), .A1(n31), .B0(n30), .C0(n29), .Y(n33) );
  OAI31XL U53 ( .A0(n35), .A1(n34), .A2(n33), .B0(n32), .Y(n38) );
  OAI211X1 U54 ( .A0(n39), .A1(n38), .B0(n37), .C0(n36), .Y(n42) );
  AOI32X1 U55 ( .A0(n42), .A1(n41), .A2(n40), .B0(DEL[6]), .B1(n17), .Y(n44)
         );
  OAI21XL U56 ( .A0(n45), .A1(n44), .B0(n43), .Y(N3) );
  NAND2X1 U57 ( .A(n18), .B(n166), .Y(n79) );
  NAND2BX1 U58 ( .AN(INS[4]), .B(OUT[4]), .Y(n54) );
  NAND2BX1 U59 ( .AN(OUT[4]), .B(INS[4]), .Y(n73) );
  NAND2X1 U60 ( .A(n54), .B(n73), .Y(n75) );
  NAND2BX1 U61 ( .AN(INS[0]), .B(OUT[0]), .Y(n50) );
  NOR2X1 U62 ( .A(n10), .B(OUT[2]), .Y(n70) );
  NAND2X1 U63 ( .A(OUT[2]), .B(n10), .Y(n52) );
  NAND2BX1 U64 ( .AN(n70), .B(n52), .Y(n58) );
  OA21XL U65 ( .A0(n50), .A1(n172), .B0(n7), .Y(n49) );
  AOI211X1 U66 ( .A0(n50), .A1(n172), .B0(n58), .C0(n49), .Y(n51) );
  NAND2X1 U67 ( .A(OUT[3]), .B(n12), .Y(n60) );
  NOR2X1 U68 ( .A(n12), .B(OUT[3]), .Y(n71) );
  AOI31X1 U69 ( .A0(n82), .A1(n52), .A2(n60), .B0(n71), .Y(n53) );
  NAND2BX1 U70 ( .AN(n14), .B(OUT[5]), .Y(n77) );
  OAI211X1 U71 ( .A0(n75), .A1(n83), .B0(n77), .C0(n54), .Y(n55) );
  NAND2BX1 U72 ( .AN(OUT[5]), .B(n14), .Y(n72) );
  XOR2X1 U73 ( .A(n167), .B(n16), .Y(n76) );
  AOI32X1 U74 ( .A0(n55), .A1(n72), .A2(n76), .B0(OUT[6]), .B1(n17), .Y(n56)
         );
  NOR2X1 U75 ( .A(n166), .B(n18), .Y(n81) );
  AO21X1 U76 ( .A0(n79), .A1(n84), .B0(n81), .Y(N6) );
  NAND2BX1 U77 ( .AN(OUT[0]), .B(INS[0]), .Y(n59) );
  AOI2BB1X1 U78 ( .A0N(n59), .A1N(OUT[1]), .B0(n7), .Y(n57) );
  AOI211X1 U79 ( .A0(OUT[1]), .A1(n59), .B0(n58), .C0(n57), .Y(n61) );
  OAI31XL U80 ( .A0(n71), .A1(n70), .A2(n61), .B0(n60), .Y(n74) );
  OAI211X1 U81 ( .A0(n75), .A1(n74), .B0(n73), .C0(n72), .Y(n78) );
  AOI32X1 U82 ( .A0(n78), .A1(n77), .A2(n76), .B0(n16), .B1(n167), .Y(n80) );
  OAI21XL U83 ( .A0(n81), .A1(n80), .B0(n79), .Y(N25) );
  NAND2BX1 U84 ( .AN(DEL[5]), .B(OUT[5]), .Y(n107) );
  NOR2X1 U85 ( .A(n167), .B(DEL[6]), .Y(n111) );
  NAND2X1 U86 ( .A(DEL[6]), .B(n167), .Y(n93) );
  NAND2BX1 U87 ( .AN(n111), .B(n93), .Y(n106) );
  NAND2X1 U88 ( .A(n3), .B(n170), .Y(n103) );
  NAND2BX1 U89 ( .AN(OUT[2]), .B(n1), .Y(n88) );
  NOR2BX1 U90 ( .AN(DEL[0]), .B(OUT[0]), .Y(n86) );
  AO21X1 U91 ( .A0(n172), .A1(n86), .B0(DEL[1]), .Y(n85) );
  NAND2BX1 U92 ( .AN(n1), .B(OUT[2]), .Y(n98) );
  AND2X1 U93 ( .A(n88), .B(n98), .Y(n95) );
  OAI211X1 U94 ( .A0(n86), .A1(n172), .B0(n85), .C0(n95), .Y(n87) );
  NOR2X1 U95 ( .A(n170), .B(n3), .Y(n100) );
  AOI31X1 U96 ( .A0(n103), .A1(n88), .A2(n87), .B0(n100), .Y(n90) );
  NOR2BX1 U97 ( .AN(DEL[4]), .B(OUT[4]), .Y(n89) );
  NOR2BX1 U98 ( .AN(OUT[4]), .B(DEL[4]), .Y(n101) );
  NOR2X1 U99 ( .A(n89), .B(n101), .Y(n102) );
  NOR2BX1 U100 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  AOI211X1 U101 ( .A0(n90), .A1(n102), .B0(n89), .C0(n105), .Y(n91) );
  NOR3BXL U102 ( .AN(n107), .B(n106), .C(n91), .Y(n92) );
  NAND2X1 U103 ( .A(DEL[7]), .B(n166), .Y(n109) );
  NOR2X1 U104 ( .A(n166), .B(DEL[7]), .Y(n112) );
  AOI31X1 U105 ( .A0(n113), .A1(n93), .A2(n109), .B0(n112), .Y(n94) );
  NOR2BX1 U106 ( .AN(OUT[0]), .B(DEL[0]), .Y(n97) );
  OAI2BB1X1 U107 ( .A0N(n97), .A1N(OUT[1]), .B0(DEL[1]), .Y(n96) );
  OAI211X1 U108 ( .A0(OUT[1]), .A1(n97), .B0(n96), .C0(n95), .Y(n99) );
  NAND3BX1 U109 ( .AN(n100), .B(n99), .C(n98), .Y(n104) );
  AOI31X1 U110 ( .A0(n104), .A1(n103), .A2(n102), .B0(n101), .Y(n108) );
  AOI211X1 U111 ( .A0(n108), .A1(n107), .B0(n106), .C0(n105), .Y(n110) );
  OAI31XL U112 ( .A0(n112), .A1(n111), .A2(n110), .B0(n109), .Y(N7) );
  OAI211X1 U113 ( .A0(n173), .A1(n114), .B0(n115), .C0(n116), .Y(n174) );
  AOI2BB2X1 U114 ( .B0(NXT[0]), .B1(n117), .A0N(n6), .A1N(n118), .Y(n116) );
  NAND2BX1 U115 ( .AN(n119), .B(PRE[0]), .Y(n115) );
  OAI221XL U116 ( .A0(n172), .A1(n114), .B0(n119), .B1(n120), .C0(n121), .Y(
        n175) );
  AOI2BB2X1 U117 ( .B0(n117), .B1(NXT[1]), .A0N(n8), .A1N(n118), .Y(n121) );
  CLKINVX1 U118 ( .A(PRE[1]), .Y(n120) );
  OAI221XL U119 ( .A0(n171), .A1(n114), .B0(n122), .B1(n119), .C0(n123), .Y(
        n176) );
  AOI2BB2X1 U120 ( .B0(n117), .B1(NXT[2]), .A0N(n10), .A1N(n118), .Y(n123) );
  OAI221XL U121 ( .A0(n170), .A1(n114), .B0(n124), .B1(n119), .C0(n125), .Y(
        n177) );
  AOI2BB2X1 U122 ( .B0(n117), .B1(NXT[3]), .A0N(n12), .A1N(n118), .Y(n125) );
  OAI221XL U123 ( .A0(n169), .A1(n114), .B0(n126), .B1(n119), .C0(n127), .Y(
        n178) );
  AOI2BB2X1 U124 ( .B0(n117), .B1(NXT[4]), .A0N(n13), .A1N(n118), .Y(n127) );
  OAI221XL U125 ( .A0(n168), .A1(n114), .B0(n128), .B1(n119), .C0(n129), .Y(
        n179) );
  AOI2BB2X1 U126 ( .B0(n117), .B1(NXT[5]), .A0N(n15), .A1N(n118), .Y(n129) );
  OAI221XL U127 ( .A0(n167), .A1(n114), .B0(n130), .B1(n119), .C0(n131), .Y(
        n180) );
  AOI2BB2X1 U128 ( .B0(n117), .B1(NXT[6]), .A0N(n17), .A1N(n118), .Y(n131) );
  OAI221XL U129 ( .A0(n166), .A1(n114), .B0(n132), .B1(n119), .C0(n133), .Y(
        n181) );
  AOI2BB2X1 U130 ( .B0(n117), .B1(NXT[7]), .A0N(n19), .A1N(n118), .Y(n133) );
  NAND2X1 U131 ( .A(n134), .B(n135), .Y(n118) );
  MXI2X1 U132 ( .A(n136), .B(n137), .S0(n138), .Y(n134) );
  AND3X1 U133 ( .A(n135), .B(n138), .C(n139), .Y(n117) );
  NAND2X1 U134 ( .A(n140), .B(N3), .Y(n119) );
  AND2X1 U135 ( .A(n141), .B(n135), .Y(n114) );
  OR2X1 U136 ( .A(N4), .B(N3), .Y(n135) );
  MXI2X1 U137 ( .A(n142), .B(n143), .S0(n138), .Y(n141) );
  CLKINVX1 U138 ( .A(N3), .Y(n138) );
  NOR2BX1 U139 ( .AN(n137), .B(n139), .Y(n143) );
  AND3X1 U140 ( .A(N25), .B(n144), .C(N26), .Y(n139) );
  NAND3BX1 U141 ( .AN(n144), .B(N26), .C(N25), .Y(n137) );
  OAI21XL U142 ( .A0(NXT[7]), .A1(n19), .B0(n145), .Y(n144) );
  OAI2BB2XL U143 ( .B0(n146), .B1(n147), .A0N(n19), .A1N(NXT[7]), .Y(n145) );
  AOI221XL U144 ( .A0(NXT[6]), .A1(n17), .B0(NXT[5]), .B1(n15), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  OAI221XL U146 ( .A0(n15), .A1(NXT[5]), .B0(n13), .B1(NXT[4]), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  AOI221XL U148 ( .A0(NXT[4]), .A1(n13), .B0(NXT[3]), .B1(n12), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  OAI221XL U150 ( .A0(n12), .A1(NXT[3]), .B0(n10), .B1(NXT[2]), .C0(n154), .Y(
        n153) );
  CLKINVX1 U151 ( .A(n155), .Y(n154) );
  AOI222XL U152 ( .A0(NXT[2]), .A1(n10), .B0(NXT[1]), .B1(n156), .C0(n6), .C1(
        n8), .Y(n155) );
  NAND2X1 U153 ( .A(n7), .B(INS[0]), .Y(n156) );
  NOR2X1 U154 ( .A(NXT[6]), .B(n17), .Y(n146) );
  NOR2BX1 U155 ( .AN(n136), .B(n140), .Y(n142) );
  AND3X1 U156 ( .A(N6), .B(n157), .C(N7), .Y(n140) );
  NAND3BX1 U157 ( .AN(n157), .B(N6), .C(N7), .Y(n136) );
  OAI21XL U158 ( .A0(n18), .A1(n132), .B0(n158), .Y(n157) );
  OAI21XL U159 ( .A0(PRE[7]), .A1(n19), .B0(n159), .Y(n158) );
  OAI21XL U160 ( .A0(n16), .A1(n130), .B0(n160), .Y(n159) );
  OAI221XL U161 ( .A0(PRE[5]), .A1(n15), .B0(PRE[6]), .B1(n17), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(INS[4]), .A1(n126), .B0(n14), .B1(n128), .C0(n162), .Y(
        n161) );
  OAI221XL U163 ( .A0(PRE[3]), .A1(n12), .B0(PRE[4]), .B1(n13), .C0(n163), .Y(
        n162) );
  OAI221XL U164 ( .A0(n9), .A1(n122), .B0(n11), .B1(n124), .C0(n164), .Y(n163)
         );
  OAI222XL U165 ( .A0(n6), .A1(n8), .B0(PRE[1]), .B1(n165), .C0(PRE[2]), .C1(
        n10), .Y(n164) );
  NOR2X1 U166 ( .A(n7), .B(INS[0]), .Y(n165) );
  CLKINVX1 U167 ( .A(PRE[3]), .Y(n124) );
  CLKINVX1 U168 ( .A(PRE[2]), .Y(n122) );
  CLKINVX1 U169 ( .A(PRE[5]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[4]), .Y(n126) );
  CLKINVX1 U171 ( .A(PRE[6]), .Y(n130) );
  CLKINVX1 U172 ( .A(PRE[7]), .Y(n132) );
endmodule


module COMPARE_7 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180;

  DFFSX1 \OUT_reg[7]  ( .D(n180), .CK(clk), .SN(n19), .Q(OUT[7]), .QN(n165) );
  DFFSX1 \OUT_reg[0]  ( .D(n173), .CK(clk), .SN(n19), .Q(OUT[0]), .QN(n172) );
  DFFSX1 \OUT_reg[4]  ( .D(n177), .CK(clk), .SN(n19), .Q(OUT[4]), .QN(n168) );
  DFFSX1 \OUT_reg[2]  ( .D(n175), .CK(clk), .SN(n19), .Q(OUT[2]), .QN(n170) );
  DFFSX1 \OUT_reg[5]  ( .D(n178), .CK(clk), .SN(n19), .Q(OUT[5]), .QN(n167) );
  DFFSX1 \OUT_reg[3]  ( .D(n176), .CK(clk), .SN(n19), .Q(OUT[3]), .QN(n169) );
  DFFSX1 \OUT_reg[6]  ( .D(n179), .CK(clk), .SN(n19), .Q(OUT[6]), .QN(n166) );
  DFFSX1 \OUT_reg[1]  ( .D(n174), .CK(clk), .SN(n19), .Q(OUT[1]), .QN(n171) );
  CLKINVX1 U2 ( .A(n24), .Y(n46) );
  CLKINVX1 U3 ( .A(n22), .Y(n45) );
  CLKINVX1 U4 ( .A(n27), .Y(n47) );
  CLKINVX1 U5 ( .A(n8), .Y(n7) );
  CLKINVX1 U6 ( .A(n9), .Y(n10) );
  CLKINVX1 U7 ( .A(n11), .Y(n12) );
  CLKINVX1 U8 ( .A(n3), .Y(n4) );
  CLKINVX1 U9 ( .A(n1), .Y(n2) );
  CLKINVX1 U10 ( .A(n15), .Y(n16) );
  CLKINVX1 U11 ( .A(n17), .Y(n18) );
  CLKINVX1 U12 ( .A(INS[0]), .Y(n6) );
  CLKBUFX3 U13 ( .A(DEL[2]), .Y(n1) );
  CLKINVX1 U14 ( .A(INS[1]), .Y(n8) );
  CLKINVX1 U15 ( .A(INS[4]), .Y(n13) );
  CLKINVX1 U16 ( .A(INS[5]), .Y(n14) );
  CLKINVX1 U17 ( .A(DEL[6]), .Y(n5) );
  CLKBUFX3 U18 ( .A(INS[6]), .Y(n15) );
  CLKBUFX3 U19 ( .A(INS[2]), .Y(n9) );
  CLKBUFX3 U20 ( .A(INS[3]), .Y(n11) );
  CLKBUFX3 U21 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U22 ( .A(INS[7]), .Y(n17) );
  CLKINVX1 U23 ( .A(n93), .Y(N26) );
  CLKINVX1 U24 ( .A(n91), .Y(n112) );
  CLKINVX1 U25 ( .A(n52), .Y(n82) );
  CLKINVX1 U26 ( .A(n50), .Y(n81) );
  CLKINVX1 U27 ( .A(RST), .Y(n19) );
  CLKINVX1 U28 ( .A(n55), .Y(n83) );
  NAND2X1 U29 ( .A(DEL[7]), .B(n18), .Y(n42) );
  NAND2BX1 U30 ( .AN(DEL[4]), .B(INS[4]), .Y(n25) );
  NAND2BX1 U31 ( .AN(INS[4]), .B(DEL[4]), .Y(n36) );
  NAND2X1 U32 ( .A(n25), .B(n36), .Y(n38) );
  NAND2BX1 U33 ( .AN(DEL[0]), .B(INS[0]), .Y(n21) );
  NOR2X1 U34 ( .A(n2), .B(n9), .Y(n33) );
  NAND2X1 U35 ( .A(n9), .B(n2), .Y(n23) );
  NAND2BX1 U36 ( .AN(n33), .B(n23), .Y(n29) );
  OA21XL U37 ( .A0(n21), .A1(n8), .B0(DEL[1]), .Y(n20) );
  AOI211X1 U38 ( .A0(n21), .A1(n8), .B0(n29), .C0(n20), .Y(n22) );
  NAND2X1 U39 ( .A(n11), .B(n4), .Y(n31) );
  NOR2X1 U40 ( .A(n4), .B(n11), .Y(n34) );
  AOI31X1 U41 ( .A0(n45), .A1(n23), .A2(n31), .B0(n34), .Y(n24) );
  NAND2BX1 U42 ( .AN(DEL[5]), .B(INS[5]), .Y(n40) );
  OAI211X1 U43 ( .A0(n38), .A1(n46), .B0(n40), .C0(n25), .Y(n26) );
  NAND2BX1 U44 ( .AN(INS[5]), .B(DEL[5]), .Y(n35) );
  XOR2X1 U45 ( .A(n16), .B(DEL[6]), .Y(n39) );
  AOI32X1 U46 ( .A0(n26), .A1(n35), .A2(n39), .B0(n15), .B1(n5), .Y(n27) );
  NOR2X1 U47 ( .A(n18), .B(DEL[7]), .Y(n44) );
  AO21X1 U48 ( .A0(n42), .A1(n47), .B0(n44), .Y(N4) );
  NAND2BX1 U49 ( .AN(INS[0]), .B(DEL[0]), .Y(n30) );
  AOI2BB1X1 U50 ( .A0N(n30), .A1N(n7), .B0(DEL[1]), .Y(n28) );
  AOI211X1 U51 ( .A0(n7), .A1(n30), .B0(n29), .C0(n28), .Y(n32) );
  OAI31XL U52 ( .A0(n34), .A1(n33), .A2(n32), .B0(n31), .Y(n37) );
  OAI211X1 U53 ( .A0(n38), .A1(n37), .B0(n36), .C0(n35), .Y(n41) );
  AOI32X1 U54 ( .A0(n41), .A1(n40), .A2(n39), .B0(DEL[6]), .B1(n16), .Y(n43)
         );
  OAI21XL U55 ( .A0(n44), .A1(n43), .B0(n42), .Y(N3) );
  NAND2X1 U56 ( .A(n17), .B(n165), .Y(n78) );
  NAND2BX1 U57 ( .AN(INS[4]), .B(OUT[4]), .Y(n53) );
  NAND2BX1 U58 ( .AN(OUT[4]), .B(INS[4]), .Y(n72) );
  NAND2X1 U59 ( .A(n53), .B(n72), .Y(n74) );
  NAND2BX1 U60 ( .AN(INS[0]), .B(OUT[0]), .Y(n49) );
  NOR2X1 U61 ( .A(n10), .B(OUT[2]), .Y(n61) );
  NAND2X1 U62 ( .A(OUT[2]), .B(n10), .Y(n51) );
  NAND2BX1 U63 ( .AN(n61), .B(n51), .Y(n57) );
  OA21XL U64 ( .A0(n49), .A1(n171), .B0(n7), .Y(n48) );
  AOI211X1 U65 ( .A0(n49), .A1(n171), .B0(n57), .C0(n48), .Y(n50) );
  NAND2X1 U66 ( .A(OUT[3]), .B(n12), .Y(n59) );
  NOR2X1 U67 ( .A(n12), .B(OUT[3]), .Y(n70) );
  AOI31X1 U68 ( .A0(n81), .A1(n51), .A2(n59), .B0(n70), .Y(n52) );
  NAND2BX1 U69 ( .AN(INS[5]), .B(OUT[5]), .Y(n76) );
  OAI211X1 U70 ( .A0(n74), .A1(n82), .B0(n76), .C0(n53), .Y(n54) );
  NAND2BX1 U71 ( .AN(OUT[5]), .B(INS[5]), .Y(n71) );
  XOR2X1 U72 ( .A(n166), .B(n15), .Y(n75) );
  AOI32X1 U73 ( .A0(n54), .A1(n71), .A2(n75), .B0(OUT[6]), .B1(n16), .Y(n55)
         );
  NOR2X1 U74 ( .A(n165), .B(n17), .Y(n80) );
  AO21X1 U75 ( .A0(n78), .A1(n83), .B0(n80), .Y(N6) );
  NAND2BX1 U76 ( .AN(OUT[0]), .B(INS[0]), .Y(n58) );
  AOI2BB1X1 U77 ( .A0N(n58), .A1N(OUT[1]), .B0(n7), .Y(n56) );
  AOI211X1 U78 ( .A0(OUT[1]), .A1(n58), .B0(n57), .C0(n56), .Y(n60) );
  OAI31XL U79 ( .A0(n70), .A1(n61), .A2(n60), .B0(n59), .Y(n73) );
  OAI211X1 U80 ( .A0(n74), .A1(n73), .B0(n72), .C0(n71), .Y(n77) );
  AOI32X1 U81 ( .A0(n77), .A1(n76), .A2(n75), .B0(n15), .B1(n166), .Y(n79) );
  OAI21XL U82 ( .A0(n80), .A1(n79), .B0(n78), .Y(N25) );
  NAND2BX1 U83 ( .AN(DEL[5]), .B(OUT[5]), .Y(n106) );
  NOR2X1 U84 ( .A(n166), .B(DEL[6]), .Y(n110) );
  NAND2X1 U85 ( .A(DEL[6]), .B(n166), .Y(n92) );
  NAND2BX1 U86 ( .AN(n110), .B(n92), .Y(n105) );
  NAND2X1 U87 ( .A(n3), .B(n169), .Y(n102) );
  NAND2BX1 U88 ( .AN(OUT[2]), .B(n1), .Y(n87) );
  NOR2BX1 U89 ( .AN(DEL[0]), .B(OUT[0]), .Y(n85) );
  AO21X1 U90 ( .A0(n171), .A1(n85), .B0(DEL[1]), .Y(n84) );
  NAND2BX1 U91 ( .AN(n1), .B(OUT[2]), .Y(n97) );
  AND2X1 U92 ( .A(n87), .B(n97), .Y(n94) );
  OAI211X1 U93 ( .A0(n85), .A1(n171), .B0(n84), .C0(n94), .Y(n86) );
  NOR2X1 U94 ( .A(n169), .B(n3), .Y(n99) );
  AOI31X1 U95 ( .A0(n102), .A1(n87), .A2(n86), .B0(n99), .Y(n89) );
  NOR2BX1 U96 ( .AN(DEL[4]), .B(OUT[4]), .Y(n88) );
  NOR2BX1 U97 ( .AN(OUT[4]), .B(DEL[4]), .Y(n100) );
  NOR2X1 U98 ( .A(n88), .B(n100), .Y(n101) );
  NOR2BX1 U99 ( .AN(DEL[5]), .B(OUT[5]), .Y(n104) );
  AOI211X1 U100 ( .A0(n89), .A1(n101), .B0(n88), .C0(n104), .Y(n90) );
  NOR3BXL U101 ( .AN(n106), .B(n105), .C(n90), .Y(n91) );
  NAND2X1 U102 ( .A(DEL[7]), .B(n165), .Y(n108) );
  NOR2X1 U103 ( .A(n165), .B(DEL[7]), .Y(n111) );
  AOI31X1 U104 ( .A0(n112), .A1(n92), .A2(n108), .B0(n111), .Y(n93) );
  NOR2BX1 U105 ( .AN(OUT[0]), .B(DEL[0]), .Y(n96) );
  OAI2BB1X1 U106 ( .A0N(n96), .A1N(OUT[1]), .B0(DEL[1]), .Y(n95) );
  OAI211X1 U107 ( .A0(OUT[1]), .A1(n96), .B0(n95), .C0(n94), .Y(n98) );
  NAND3BX1 U108 ( .AN(n99), .B(n98), .C(n97), .Y(n103) );
  AOI31X1 U109 ( .A0(n103), .A1(n102), .A2(n101), .B0(n100), .Y(n107) );
  AOI211X1 U110 ( .A0(n107), .A1(n106), .B0(n105), .C0(n104), .Y(n109) );
  OAI31XL U111 ( .A0(n111), .A1(n110), .A2(n109), .B0(n108), .Y(N7) );
  OAI211X1 U112 ( .A0(n172), .A1(n113), .B0(n114), .C0(n115), .Y(n173) );
  AOI2BB2X1 U113 ( .B0(NXT[0]), .B1(n116), .A0N(n6), .A1N(n117), .Y(n115) );
  NAND2BX1 U114 ( .AN(n118), .B(PRE[0]), .Y(n114) );
  OAI221XL U115 ( .A0(n171), .A1(n113), .B0(n118), .B1(n119), .C0(n120), .Y(
        n174) );
  AOI2BB2X1 U116 ( .B0(n116), .B1(NXT[1]), .A0N(n8), .A1N(n117), .Y(n120) );
  CLKINVX1 U117 ( .A(PRE[1]), .Y(n119) );
  OAI221XL U118 ( .A0(n170), .A1(n113), .B0(n121), .B1(n118), .C0(n122), .Y(
        n175) );
  AOI2BB2X1 U119 ( .B0(n116), .B1(NXT[2]), .A0N(n10), .A1N(n117), .Y(n122) );
  OAI221XL U120 ( .A0(n169), .A1(n113), .B0(n123), .B1(n118), .C0(n124), .Y(
        n176) );
  AOI2BB2X1 U121 ( .B0(n116), .B1(NXT[3]), .A0N(n12), .A1N(n117), .Y(n124) );
  OAI221XL U122 ( .A0(n168), .A1(n113), .B0(n125), .B1(n118), .C0(n126), .Y(
        n177) );
  AOI2BB2X1 U123 ( .B0(n116), .B1(NXT[4]), .A0N(n13), .A1N(n117), .Y(n126) );
  OAI221XL U124 ( .A0(n167), .A1(n113), .B0(n127), .B1(n118), .C0(n128), .Y(
        n178) );
  AOI2BB2X1 U125 ( .B0(n116), .B1(NXT[5]), .A0N(n14), .A1N(n117), .Y(n128) );
  OAI221XL U126 ( .A0(n166), .A1(n113), .B0(n129), .B1(n118), .C0(n130), .Y(
        n179) );
  AOI2BB2X1 U127 ( .B0(n116), .B1(NXT[6]), .A0N(n16), .A1N(n117), .Y(n130) );
  OAI221XL U128 ( .A0(n165), .A1(n113), .B0(n131), .B1(n118), .C0(n132), .Y(
        n180) );
  AOI2BB2X1 U129 ( .B0(n116), .B1(NXT[7]), .A0N(n18), .A1N(n117), .Y(n132) );
  NAND2X1 U130 ( .A(n133), .B(n134), .Y(n117) );
  MXI2X1 U131 ( .A(n135), .B(n136), .S0(n137), .Y(n133) );
  AND3X1 U132 ( .A(n134), .B(n137), .C(n138), .Y(n116) );
  NAND2X1 U133 ( .A(n139), .B(N3), .Y(n118) );
  AND2X1 U134 ( .A(n140), .B(n134), .Y(n113) );
  OR2X1 U135 ( .A(N4), .B(N3), .Y(n134) );
  MXI2X1 U136 ( .A(n141), .B(n142), .S0(n137), .Y(n140) );
  CLKINVX1 U137 ( .A(N3), .Y(n137) );
  NOR2BX1 U138 ( .AN(n136), .B(n138), .Y(n142) );
  AND3X1 U139 ( .A(N25), .B(n143), .C(N26), .Y(n138) );
  NAND3BX1 U140 ( .AN(n143), .B(N26), .C(N25), .Y(n136) );
  OAI21XL U141 ( .A0(NXT[7]), .A1(n18), .B0(n144), .Y(n143) );
  OAI2BB2XL U142 ( .B0(n145), .B1(n146), .A0N(n18), .A1N(NXT[7]), .Y(n144) );
  AOI221XL U143 ( .A0(NXT[6]), .A1(n16), .B0(NXT[5]), .B1(n14), .C0(n147), .Y(
        n146) );
  CLKINVX1 U144 ( .A(n148), .Y(n147) );
  OAI221XL U145 ( .A0(n14), .A1(NXT[5]), .B0(n13), .B1(NXT[4]), .C0(n149), .Y(
        n148) );
  CLKINVX1 U146 ( .A(n150), .Y(n149) );
  AOI221XL U147 ( .A0(NXT[4]), .A1(n13), .B0(NXT[3]), .B1(n12), .C0(n151), .Y(
        n150) );
  CLKINVX1 U148 ( .A(n152), .Y(n151) );
  OAI221XL U149 ( .A0(n12), .A1(NXT[3]), .B0(n10), .B1(NXT[2]), .C0(n153), .Y(
        n152) );
  CLKINVX1 U150 ( .A(n154), .Y(n153) );
  AOI222XL U151 ( .A0(NXT[2]), .A1(n10), .B0(NXT[1]), .B1(n155), .C0(n6), .C1(
        n8), .Y(n154) );
  NAND2X1 U152 ( .A(n7), .B(INS[0]), .Y(n155) );
  NOR2X1 U153 ( .A(NXT[6]), .B(n16), .Y(n145) );
  NOR2BX1 U154 ( .AN(n135), .B(n139), .Y(n141) );
  AND3X1 U155 ( .A(N6), .B(n156), .C(N7), .Y(n139) );
  NAND3BX1 U156 ( .AN(n156), .B(N6), .C(N7), .Y(n135) );
  OAI21XL U157 ( .A0(n17), .A1(n131), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(PRE[7]), .A1(n18), .B0(n158), .Y(n157) );
  OAI21XL U159 ( .A0(n15), .A1(n129), .B0(n159), .Y(n158) );
  OAI221XL U160 ( .A0(PRE[5]), .A1(n14), .B0(PRE[6]), .B1(n16), .C0(n160), .Y(
        n159) );
  OAI221XL U161 ( .A0(INS[4]), .A1(n125), .B0(INS[5]), .B1(n127), .C0(n161), 
        .Y(n160) );
  OAI221XL U162 ( .A0(PRE[3]), .A1(n12), .B0(PRE[4]), .B1(n13), .C0(n162), .Y(
        n161) );
  OAI221XL U163 ( .A0(n9), .A1(n121), .B0(n11), .B1(n123), .C0(n163), .Y(n162)
         );
  OAI222XL U164 ( .A0(n6), .A1(n8), .B0(PRE[1]), .B1(n164), .C0(PRE[2]), .C1(
        n10), .Y(n163) );
  NOR2X1 U165 ( .A(n7), .B(INS[0]), .Y(n164) );
  CLKINVX1 U166 ( .A(PRE[3]), .Y(n123) );
  CLKINVX1 U167 ( .A(PRE[2]), .Y(n121) );
  CLKINVX1 U168 ( .A(PRE[5]), .Y(n127) );
  CLKINVX1 U169 ( .A(PRE[4]), .Y(n125) );
  CLKINVX1 U170 ( .A(PRE[6]), .Y(n129) );
  CLKINVX1 U171 ( .A(PRE[7]), .Y(n131) );
endmodule


module COMPARE_6 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  CLKINVX1 U2 ( .A(n23), .Y(n45) );
  CLKINVX1 U3 ( .A(n21), .Y(n44) );
  CLKINVX1 U4 ( .A(n26), .Y(n46) );
  CLKINVX1 U5 ( .A(n8), .Y(n9) );
  CLKINVX1 U6 ( .A(n10), .Y(n11) );
  CLKINVX1 U7 ( .A(n3), .Y(n4) );
  CLKINVX1 U8 ( .A(n1), .Y(n2) );
  CLKINVX1 U9 ( .A(n14), .Y(n15) );
  CLKINVX1 U10 ( .A(n16), .Y(n17) );
  CLKINVX1 U11 ( .A(INS[0]), .Y(n6) );
  CLKBUFX3 U12 ( .A(DEL[2]), .Y(n1) );
  CLKINVX1 U13 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U14 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U15 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U16 ( .A(DEL[6]), .Y(n5) );
  CLKBUFX3 U17 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U18 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U21 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U22 ( .A(n92), .Y(N26) );
  CLKINVX1 U23 ( .A(n90), .Y(n111) );
  CLKINVX1 U24 ( .A(n51), .Y(n81) );
  CLKINVX1 U25 ( .A(n49), .Y(n80) );
  CLKINVX1 U26 ( .A(RST), .Y(n18) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module COMPARE_5 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  CLKINVX1 U2 ( .A(n23), .Y(n45) );
  CLKINVX1 U3 ( .A(n21), .Y(n44) );
  CLKINVX1 U4 ( .A(n26), .Y(n46) );
  CLKINVX1 U5 ( .A(n8), .Y(n9) );
  CLKINVX1 U6 ( .A(n10), .Y(n11) );
  CLKINVX1 U7 ( .A(n3), .Y(n4) );
  CLKINVX1 U8 ( .A(n1), .Y(n2) );
  CLKINVX1 U9 ( .A(n14), .Y(n15) );
  CLKINVX1 U10 ( .A(n16), .Y(n17) );
  CLKINVX1 U11 ( .A(INS[0]), .Y(n6) );
  CLKBUFX3 U12 ( .A(DEL[2]), .Y(n1) );
  CLKINVX1 U13 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U14 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U15 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U16 ( .A(DEL[6]), .Y(n5) );
  CLKBUFX3 U17 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U18 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U21 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U22 ( .A(n92), .Y(N26) );
  CLKINVX1 U23 ( .A(n90), .Y(n111) );
  CLKINVX1 U24 ( .A(n51), .Y(n81) );
  CLKINVX1 U25 ( .A(n49), .Y(n80) );
  CLKINVX1 U26 ( .A(RST), .Y(n18) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module COMPARE_4 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  CLKINVX1 U2 ( .A(n23), .Y(n45) );
  CLKINVX1 U3 ( .A(n21), .Y(n44) );
  CLKINVX1 U4 ( .A(n26), .Y(n46) );
  CLKINVX1 U5 ( .A(n8), .Y(n9) );
  CLKINVX1 U6 ( .A(n10), .Y(n11) );
  CLKINVX1 U7 ( .A(n3), .Y(n4) );
  CLKINVX1 U8 ( .A(n1), .Y(n2) );
  CLKINVX1 U9 ( .A(n14), .Y(n15) );
  CLKINVX1 U10 ( .A(n16), .Y(n17) );
  CLKINVX1 U11 ( .A(INS[0]), .Y(n6) );
  CLKBUFX3 U12 ( .A(DEL[2]), .Y(n1) );
  CLKINVX1 U13 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U14 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U15 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U16 ( .A(DEL[6]), .Y(n5) );
  CLKBUFX3 U17 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U18 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U21 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U22 ( .A(n92), .Y(N26) );
  CLKINVX1 U23 ( .A(n90), .Y(n111) );
  CLKINVX1 U24 ( .A(n51), .Y(n81) );
  CLKINVX1 U25 ( .A(n49), .Y(n80) );
  CLKINVX1 U26 ( .A(RST), .Y(n18) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module COMPARE_3 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  CLKINVX1 U2 ( .A(n23), .Y(n45) );
  CLKINVX1 U3 ( .A(n21), .Y(n44) );
  CLKINVX1 U4 ( .A(n26), .Y(n46) );
  CLKINVX1 U5 ( .A(n8), .Y(n9) );
  CLKINVX1 U6 ( .A(n10), .Y(n11) );
  CLKINVX1 U7 ( .A(n3), .Y(n4) );
  CLKINVX1 U8 ( .A(n1), .Y(n2) );
  CLKINVX1 U9 ( .A(n14), .Y(n15) );
  CLKINVX1 U10 ( .A(n16), .Y(n17) );
  CLKINVX1 U11 ( .A(INS[0]), .Y(n6) );
  CLKBUFX3 U12 ( .A(DEL[2]), .Y(n1) );
  CLKINVX1 U13 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U14 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U15 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U16 ( .A(DEL[6]), .Y(n5) );
  CLKBUFX3 U17 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U18 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U21 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U22 ( .A(n92), .Y(N26) );
  CLKINVX1 U23 ( .A(n90), .Y(n111) );
  CLKINVX1 U24 ( .A(n51), .Y(n81) );
  CLKINVX1 U25 ( .A(n49), .Y(n80) );
  CLKINVX1 U26 ( .A(RST), .Y(n18) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module COMPARE_2 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  CLKINVX1 U2 ( .A(n23), .Y(n45) );
  CLKINVX1 U3 ( .A(n21), .Y(n44) );
  CLKINVX1 U4 ( .A(n26), .Y(n46) );
  CLKINVX1 U5 ( .A(n8), .Y(n9) );
  CLKINVX1 U6 ( .A(n10), .Y(n11) );
  CLKINVX1 U7 ( .A(n3), .Y(n4) );
  CLKINVX1 U8 ( .A(n1), .Y(n2) );
  CLKINVX1 U9 ( .A(n14), .Y(n15) );
  CLKINVX1 U10 ( .A(n16), .Y(n17) );
  CLKINVX1 U11 ( .A(INS[0]), .Y(n6) );
  CLKBUFX3 U12 ( .A(DEL[2]), .Y(n1) );
  CLKINVX1 U13 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U14 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U15 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U16 ( .A(DEL[6]), .Y(n5) );
  CLKBUFX3 U17 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U18 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U21 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U22 ( .A(n92), .Y(N26) );
  CLKINVX1 U23 ( .A(n90), .Y(n111) );
  CLKINVX1 U24 ( .A(n51), .Y(n81) );
  CLKINVX1 U25 ( .A(n49), .Y(n80) );
  CLKINVX1 U26 ( .A(RST), .Y(n18) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module COMPARE_1 ( clk, RST, INS, DEL, PRE, NXT, OUT );
  input [7:0] INS;
  input [7:0] DEL;
  input [7:0] PRE;
  input [7:0] NXT;
  output [7:0] OUT;
  input clk, RST;
  wire   N3, N4, N6, N7, N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179;

  DFFSX1 \OUT_reg[7]  ( .D(n179), .CK(clk), .SN(n18), .Q(OUT[7]), .QN(n164) );
  DFFSX1 \OUT_reg[0]  ( .D(n172), .CK(clk), .SN(n18), .Q(OUT[0]), .QN(n171) );
  DFFSX1 \OUT_reg[4]  ( .D(n176), .CK(clk), .SN(n18), .Q(OUT[4]), .QN(n167) );
  DFFSX1 \OUT_reg[2]  ( .D(n174), .CK(clk), .SN(n18), .Q(OUT[2]), .QN(n169) );
  DFFSX1 \OUT_reg[5]  ( .D(n177), .CK(clk), .SN(n18), .Q(OUT[5]), .QN(n166) );
  DFFSX1 \OUT_reg[3]  ( .D(n175), .CK(clk), .SN(n18), .Q(OUT[3]), .QN(n168) );
  DFFSX1 \OUT_reg[6]  ( .D(n178), .CK(clk), .SN(n18), .Q(OUT[6]), .QN(n165) );
  DFFSX1 \OUT_reg[1]  ( .D(n173), .CK(clk), .SN(n18), .Q(OUT[1]), .QN(n170) );
  CLKINVX1 U2 ( .A(n23), .Y(n45) );
  CLKINVX1 U3 ( .A(n21), .Y(n44) );
  CLKINVX1 U4 ( .A(n26), .Y(n46) );
  CLKINVX1 U5 ( .A(n8), .Y(n9) );
  CLKINVX1 U6 ( .A(n10), .Y(n11) );
  CLKINVX1 U7 ( .A(n3), .Y(n4) );
  CLKINVX1 U8 ( .A(n1), .Y(n2) );
  CLKINVX1 U9 ( .A(n14), .Y(n15) );
  CLKINVX1 U10 ( .A(n16), .Y(n17) );
  CLKINVX1 U11 ( .A(INS[0]), .Y(n6) );
  CLKBUFX3 U12 ( .A(DEL[2]), .Y(n1) );
  CLKINVX1 U13 ( .A(INS[1]), .Y(n7) );
  CLKINVX1 U14 ( .A(INS[4]), .Y(n12) );
  CLKINVX1 U15 ( .A(INS[5]), .Y(n13) );
  CLKINVX1 U16 ( .A(DEL[6]), .Y(n5) );
  CLKBUFX3 U17 ( .A(INS[6]), .Y(n14) );
  CLKBUFX3 U18 ( .A(INS[2]), .Y(n8) );
  CLKBUFX3 U19 ( .A(INS[3]), .Y(n10) );
  CLKBUFX3 U20 ( .A(DEL[3]), .Y(n3) );
  CLKBUFX3 U21 ( .A(INS[7]), .Y(n16) );
  CLKINVX1 U22 ( .A(n92), .Y(N26) );
  CLKINVX1 U23 ( .A(n90), .Y(n111) );
  CLKINVX1 U24 ( .A(n51), .Y(n81) );
  CLKINVX1 U25 ( .A(n49), .Y(n80) );
  CLKINVX1 U26 ( .A(RST), .Y(n18) );
  CLKINVX1 U27 ( .A(n54), .Y(n82) );
  NAND2X1 U28 ( .A(DEL[7]), .B(n17), .Y(n41) );
  NAND2BX1 U29 ( .AN(DEL[4]), .B(INS[4]), .Y(n24) );
  NAND2BX1 U30 ( .AN(INS[4]), .B(DEL[4]), .Y(n35) );
  NAND2X1 U31 ( .A(n24), .B(n35), .Y(n37) );
  NAND2BX1 U32 ( .AN(DEL[0]), .B(INS[0]), .Y(n20) );
  NOR2X1 U33 ( .A(n2), .B(n8), .Y(n32) );
  NAND2X1 U34 ( .A(n8), .B(n2), .Y(n22) );
  NAND2BX1 U35 ( .AN(n32), .B(n22), .Y(n28) );
  OA21XL U36 ( .A0(n20), .A1(n7), .B0(DEL[1]), .Y(n19) );
  AOI211X1 U37 ( .A0(n20), .A1(n7), .B0(n28), .C0(n19), .Y(n21) );
  NAND2X1 U38 ( .A(n10), .B(n4), .Y(n30) );
  NOR2X1 U39 ( .A(n4), .B(n10), .Y(n33) );
  AOI31X1 U40 ( .A0(n44), .A1(n22), .A2(n30), .B0(n33), .Y(n23) );
  NAND2BX1 U41 ( .AN(DEL[5]), .B(INS[5]), .Y(n39) );
  OAI211X1 U42 ( .A0(n37), .A1(n45), .B0(n39), .C0(n24), .Y(n25) );
  NAND2BX1 U43 ( .AN(INS[5]), .B(DEL[5]), .Y(n34) );
  XOR2X1 U44 ( .A(n15), .B(DEL[6]), .Y(n38) );
  AOI32X1 U45 ( .A0(n25), .A1(n34), .A2(n38), .B0(n14), .B1(n5), .Y(n26) );
  NOR2X1 U46 ( .A(n17), .B(DEL[7]), .Y(n43) );
  AO21X1 U47 ( .A0(n41), .A1(n46), .B0(n43), .Y(N4) );
  NAND2BX1 U48 ( .AN(INS[0]), .B(DEL[0]), .Y(n29) );
  AOI2BB1X1 U49 ( .A0N(n29), .A1N(INS[1]), .B0(DEL[1]), .Y(n27) );
  AOI211X1 U50 ( .A0(INS[1]), .A1(n29), .B0(n28), .C0(n27), .Y(n31) );
  OAI31XL U51 ( .A0(n33), .A1(n32), .A2(n31), .B0(n30), .Y(n36) );
  OAI211X1 U52 ( .A0(n37), .A1(n36), .B0(n35), .C0(n34), .Y(n40) );
  AOI32X1 U53 ( .A0(n40), .A1(n39), .A2(n38), .B0(DEL[6]), .B1(n15), .Y(n42)
         );
  OAI21XL U54 ( .A0(n43), .A1(n42), .B0(n41), .Y(N3) );
  NAND2X1 U55 ( .A(n16), .B(n164), .Y(n77) );
  NAND2BX1 U56 ( .AN(INS[4]), .B(OUT[4]), .Y(n52) );
  NAND2BX1 U57 ( .AN(OUT[4]), .B(INS[4]), .Y(n71) );
  NAND2X1 U58 ( .A(n52), .B(n71), .Y(n73) );
  NAND2BX1 U59 ( .AN(INS[0]), .B(OUT[0]), .Y(n48) );
  NOR2X1 U60 ( .A(n9), .B(OUT[2]), .Y(n60) );
  NAND2X1 U61 ( .A(OUT[2]), .B(n9), .Y(n50) );
  NAND2BX1 U62 ( .AN(n60), .B(n50), .Y(n56) );
  OA21XL U63 ( .A0(n48), .A1(n170), .B0(INS[1]), .Y(n47) );
  AOI211X1 U64 ( .A0(n48), .A1(n170), .B0(n56), .C0(n47), .Y(n49) );
  NAND2X1 U65 ( .A(OUT[3]), .B(n11), .Y(n58) );
  NOR2X1 U66 ( .A(n11), .B(OUT[3]), .Y(n61) );
  AOI31X1 U67 ( .A0(n80), .A1(n50), .A2(n58), .B0(n61), .Y(n51) );
  NAND2BX1 U68 ( .AN(INS[5]), .B(OUT[5]), .Y(n75) );
  OAI211X1 U69 ( .A0(n73), .A1(n81), .B0(n75), .C0(n52), .Y(n53) );
  NAND2BX1 U70 ( .AN(OUT[5]), .B(INS[5]), .Y(n70) );
  XOR2X1 U71 ( .A(n165), .B(n14), .Y(n74) );
  AOI32X1 U72 ( .A0(n53), .A1(n70), .A2(n74), .B0(OUT[6]), .B1(n15), .Y(n54)
         );
  NOR2X1 U73 ( .A(n164), .B(n16), .Y(n79) );
  AO21X1 U74 ( .A0(n77), .A1(n82), .B0(n79), .Y(N6) );
  NAND2BX1 U75 ( .AN(OUT[0]), .B(INS[0]), .Y(n57) );
  AOI2BB1X1 U76 ( .A0N(n57), .A1N(OUT[1]), .B0(INS[1]), .Y(n55) );
  AOI211X1 U77 ( .A0(OUT[1]), .A1(n57), .B0(n56), .C0(n55), .Y(n59) );
  OAI31XL U78 ( .A0(n61), .A1(n60), .A2(n59), .B0(n58), .Y(n72) );
  OAI211X1 U79 ( .A0(n73), .A1(n72), .B0(n71), .C0(n70), .Y(n76) );
  AOI32X1 U80 ( .A0(n76), .A1(n75), .A2(n74), .B0(n14), .B1(n165), .Y(n78) );
  OAI21XL U81 ( .A0(n79), .A1(n78), .B0(n77), .Y(N25) );
  NAND2BX1 U82 ( .AN(DEL[5]), .B(OUT[5]), .Y(n105) );
  NOR2X1 U83 ( .A(n165), .B(DEL[6]), .Y(n109) );
  NAND2X1 U84 ( .A(DEL[6]), .B(n165), .Y(n91) );
  NAND2BX1 U85 ( .AN(n109), .B(n91), .Y(n104) );
  NAND2X1 U86 ( .A(n3), .B(n168), .Y(n101) );
  NAND2BX1 U87 ( .AN(OUT[2]), .B(n1), .Y(n86) );
  NOR2BX1 U88 ( .AN(DEL[0]), .B(OUT[0]), .Y(n84) );
  AO21X1 U89 ( .A0(n170), .A1(n84), .B0(DEL[1]), .Y(n83) );
  NAND2BX1 U90 ( .AN(n1), .B(OUT[2]), .Y(n96) );
  AND2X1 U91 ( .A(n86), .B(n96), .Y(n93) );
  OAI211X1 U92 ( .A0(n84), .A1(n170), .B0(n83), .C0(n93), .Y(n85) );
  NOR2X1 U93 ( .A(n168), .B(n3), .Y(n98) );
  AOI31X1 U94 ( .A0(n101), .A1(n86), .A2(n85), .B0(n98), .Y(n88) );
  NOR2BX1 U95 ( .AN(DEL[4]), .B(OUT[4]), .Y(n87) );
  NOR2BX1 U96 ( .AN(OUT[4]), .B(DEL[4]), .Y(n99) );
  NOR2X1 U97 ( .A(n87), .B(n99), .Y(n100) );
  NOR2BX1 U98 ( .AN(DEL[5]), .B(OUT[5]), .Y(n103) );
  AOI211X1 U99 ( .A0(n88), .A1(n100), .B0(n87), .C0(n103), .Y(n89) );
  NOR3BXL U100 ( .AN(n105), .B(n104), .C(n89), .Y(n90) );
  NAND2X1 U101 ( .A(DEL[7]), .B(n164), .Y(n107) );
  NOR2X1 U102 ( .A(n164), .B(DEL[7]), .Y(n110) );
  AOI31X1 U103 ( .A0(n111), .A1(n91), .A2(n107), .B0(n110), .Y(n92) );
  NOR2BX1 U104 ( .AN(OUT[0]), .B(DEL[0]), .Y(n95) );
  OAI2BB1X1 U105 ( .A0N(n95), .A1N(OUT[1]), .B0(DEL[1]), .Y(n94) );
  OAI211X1 U106 ( .A0(OUT[1]), .A1(n95), .B0(n94), .C0(n93), .Y(n97) );
  NAND3BX1 U107 ( .AN(n98), .B(n97), .C(n96), .Y(n102) );
  AOI31X1 U108 ( .A0(n102), .A1(n101), .A2(n100), .B0(n99), .Y(n106) );
  AOI211X1 U109 ( .A0(n106), .A1(n105), .B0(n104), .C0(n103), .Y(n108) );
  OAI31XL U110 ( .A0(n110), .A1(n109), .A2(n108), .B0(n107), .Y(N7) );
  OAI211X1 U111 ( .A0(n171), .A1(n112), .B0(n113), .C0(n114), .Y(n172) );
  AOI2BB2X1 U112 ( .B0(NXT[0]), .B1(n115), .A0N(n6), .A1N(n116), .Y(n114) );
  NAND2BX1 U113 ( .AN(n117), .B(PRE[0]), .Y(n113) );
  OAI221XL U114 ( .A0(n170), .A1(n112), .B0(n117), .B1(n118), .C0(n119), .Y(
        n173) );
  AOI2BB2X1 U115 ( .B0(n115), .B1(NXT[1]), .A0N(n7), .A1N(n116), .Y(n119) );
  CLKINVX1 U116 ( .A(PRE[1]), .Y(n118) );
  OAI221XL U117 ( .A0(n169), .A1(n112), .B0(n120), .B1(n117), .C0(n121), .Y(
        n174) );
  AOI2BB2X1 U118 ( .B0(n115), .B1(NXT[2]), .A0N(n9), .A1N(n116), .Y(n121) );
  OAI221XL U119 ( .A0(n168), .A1(n112), .B0(n122), .B1(n117), .C0(n123), .Y(
        n175) );
  AOI2BB2X1 U120 ( .B0(n115), .B1(NXT[3]), .A0N(n11), .A1N(n116), .Y(n123) );
  OAI221XL U121 ( .A0(n167), .A1(n112), .B0(n124), .B1(n117), .C0(n125), .Y(
        n176) );
  AOI2BB2X1 U122 ( .B0(n115), .B1(NXT[4]), .A0N(n12), .A1N(n116), .Y(n125) );
  OAI221XL U123 ( .A0(n166), .A1(n112), .B0(n126), .B1(n117), .C0(n127), .Y(
        n177) );
  AOI2BB2X1 U124 ( .B0(n115), .B1(NXT[5]), .A0N(n13), .A1N(n116), .Y(n127) );
  OAI221XL U125 ( .A0(n165), .A1(n112), .B0(n128), .B1(n117), .C0(n129), .Y(
        n178) );
  AOI2BB2X1 U126 ( .B0(n115), .B1(NXT[6]), .A0N(n15), .A1N(n116), .Y(n129) );
  OAI221XL U127 ( .A0(n164), .A1(n112), .B0(n130), .B1(n117), .C0(n131), .Y(
        n179) );
  AOI2BB2X1 U128 ( .B0(n115), .B1(NXT[7]), .A0N(n17), .A1N(n116), .Y(n131) );
  NAND2X1 U129 ( .A(n132), .B(n133), .Y(n116) );
  MXI2X1 U130 ( .A(n134), .B(n135), .S0(n136), .Y(n132) );
  AND3X1 U131 ( .A(n133), .B(n136), .C(n137), .Y(n115) );
  NAND2X1 U132 ( .A(n138), .B(N3), .Y(n117) );
  AND2X1 U133 ( .A(n139), .B(n133), .Y(n112) );
  OR2X1 U134 ( .A(N4), .B(N3), .Y(n133) );
  MXI2X1 U135 ( .A(n140), .B(n141), .S0(n136), .Y(n139) );
  CLKINVX1 U136 ( .A(N3), .Y(n136) );
  NOR2BX1 U137 ( .AN(n135), .B(n137), .Y(n141) );
  AND3X1 U138 ( .A(N25), .B(n142), .C(N26), .Y(n137) );
  NAND3BX1 U139 ( .AN(n142), .B(N26), .C(N25), .Y(n135) );
  OAI21XL U140 ( .A0(NXT[7]), .A1(n17), .B0(n143), .Y(n142) );
  OAI2BB2XL U141 ( .B0(n144), .B1(n145), .A0N(n17), .A1N(NXT[7]), .Y(n143) );
  AOI221XL U142 ( .A0(NXT[6]), .A1(n15), .B0(NXT[5]), .B1(n13), .C0(n146), .Y(
        n145) );
  CLKINVX1 U143 ( .A(n147), .Y(n146) );
  OAI221XL U144 ( .A0(n13), .A1(NXT[5]), .B0(n12), .B1(NXT[4]), .C0(n148), .Y(
        n147) );
  CLKINVX1 U145 ( .A(n149), .Y(n148) );
  AOI221XL U146 ( .A0(NXT[4]), .A1(n12), .B0(NXT[3]), .B1(n11), .C0(n150), .Y(
        n149) );
  CLKINVX1 U147 ( .A(n151), .Y(n150) );
  OAI221XL U148 ( .A0(n11), .A1(NXT[3]), .B0(n9), .B1(NXT[2]), .C0(n152), .Y(
        n151) );
  CLKINVX1 U149 ( .A(n153), .Y(n152) );
  AOI222XL U150 ( .A0(NXT[2]), .A1(n9), .B0(NXT[1]), .B1(n154), .C0(n6), .C1(
        n7), .Y(n153) );
  NAND2X1 U151 ( .A(INS[1]), .B(INS[0]), .Y(n154) );
  NOR2X1 U152 ( .A(NXT[6]), .B(n15), .Y(n144) );
  NOR2BX1 U153 ( .AN(n134), .B(n138), .Y(n140) );
  AND3X1 U154 ( .A(N6), .B(n155), .C(N7), .Y(n138) );
  NAND3BX1 U155 ( .AN(n155), .B(N6), .C(N7), .Y(n134) );
  OAI21XL U156 ( .A0(n16), .A1(n130), .B0(n156), .Y(n155) );
  OAI21XL U157 ( .A0(PRE[7]), .A1(n17), .B0(n157), .Y(n156) );
  OAI21XL U158 ( .A0(n14), .A1(n128), .B0(n158), .Y(n157) );
  OAI221XL U159 ( .A0(PRE[5]), .A1(n13), .B0(PRE[6]), .B1(n15), .C0(n159), .Y(
        n158) );
  OAI221XL U160 ( .A0(INS[4]), .A1(n124), .B0(INS[5]), .B1(n126), .C0(n160), 
        .Y(n159) );
  OAI221XL U161 ( .A0(PRE[3]), .A1(n11), .B0(PRE[4]), .B1(n12), .C0(n161), .Y(
        n160) );
  OAI221XL U162 ( .A0(n8), .A1(n120), .B0(n10), .B1(n122), .C0(n162), .Y(n161)
         );
  OAI222XL U163 ( .A0(n6), .A1(n7), .B0(PRE[1]), .B1(n163), .C0(PRE[2]), .C1(
        n9), .Y(n162) );
  NOR2X1 U164 ( .A(INS[1]), .B(INS[0]), .Y(n163) );
  CLKINVX1 U165 ( .A(PRE[3]), .Y(n122) );
  CLKINVX1 U166 ( .A(PRE[2]), .Y(n120) );
  CLKINVX1 U167 ( .A(PRE[5]), .Y(n126) );
  CLKINVX1 U168 ( .A(PRE[4]), .Y(n124) );
  CLKINVX1 U169 ( .A(PRE[6]), .Y(n128) );
  CLKINVX1 U170 ( .A(PRE[7]), .Y(n130) );
endmodule


module lmfe_med49 ( clk, RST, SEN, INS, DEL, MED );
  input [7:0] INS;
  input [7:0] DEL;
  output [7:0] MED;
  input clk, RST, SEN;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99;
  wire   [7:0] w_INS;
  wire   [7:0] w_DEL;
  wire   [7:0] out01;
  wire   [7:0] out00;
  wire   [7:0] out02;
  wire   [7:0] out03;
  wire   [7:0] out04;
  wire   [7:0] out05;
  wire   [7:0] out06;
  wire   [7:0] out07;
  wire   [7:0] out08;
  wire   [7:0] out09;
  wire   [7:0] out10;
  wire   [7:0] out11;
  wire   [7:0] out12;
  wire   [7:0] out13;
  wire   [7:0] out14;
  wire   [7:0] out15;
  wire   [7:0] out16;
  wire   [7:0] out17;
  wire   [7:0] out18;
  wire   [7:0] out19;
  wire   [7:0] out20;
  wire   [7:0] out21;
  wire   [7:0] out22;
  wire   [7:0] out23;
  wire   [7:0] out25;
  wire   [7:0] out26;
  wire   [7:0] out27;
  wire   [7:0] out28;
  wire   [7:0] out29;
  wire   [7:0] out30;
  wire   [7:0] out31;
  wire   [7:0] out32;
  wire   [7:0] out33;
  wire   [7:0] out34;
  wire   [7:0] out35;
  wire   [7:0] out36;
  wire   [7:0] out37;
  wire   [7:0] out38;
  wire   [7:0] out39;
  wire   [7:0] out40;
  wire   [7:0] out41;
  wire   [7:0] out42;
  wire   [7:0] out43;
  wire   [7:0] out44;
  wire   [7:0] out45;
  wire   [7:0] out46;
  wire   [7:0] out47;
  wire   [7:0] out48;

  COMPARE_0 C00 ( .clk(clk), .RST(n99), .INS({n92, n91, n87, n86, n85, n79, 
        n77, n76}), .DEL({n72, n71, n66, n62, n58, n54, n50, n46}), .PRE({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .NXT(out01), .OUT(out00)
         );
  COMPARE_48 C01 ( .clk(clk), .RST(n97), .INS({n92, n88, n37, n28, n82, n78, 
        n21, n12}), .DEL({n75, n2, n69, n65, n58, n54, n53, n49}), .PRE(out00), 
        .NXT(out02), .OUT(out01) );
  COMPARE_47 C02 ( .clk(clk), .RST(RST), .INS({n92, n88, n39, n30, n82, n78, 
        n23, n14}), .DEL({n75, n4, n69, n65, n58, n54, n53, n49}), .PRE(out01), 
        .NXT(out03), .OUT(out02) );
  COMPARE_46 C03 ( .clk(clk), .RST(n96), .INS({n92, n88, n38, n29, n82, n78, 
        n22, n13}), .DEL({n75, n3, n69, n65, n58, n54, n53, n49}), .PRE(out02), 
        .NXT(out04), .OUT(out03) );
  COMPARE_45 C04 ( .clk(clk), .RST(n98), .INS({n92, n88, n37, n28, n82, n78, 
        n21, n12}), .DEL({n75, n2, n69, n65, n58, n54, n53, n49}), .PRE(out03), 
        .NXT(out05), .OUT(out04) );
  COMPARE_44 C05 ( .clk(clk), .RST(n96), .INS({n92, n88, n39, n30, n82, n78, 
        n23, n14}), .DEL({n75, n4, n69, n65, n58, n54, n53, n49}), .PRE(out04), 
        .NXT(out06), .OUT(out05) );
  COMPARE_43 C06 ( .clk(clk), .RST(n97), .INS({n92, n88, n38, n29, n82, n78, 
        n22, n13}), .DEL({n75, n3, n69, n65, n58, n54, n53, n49}), .PRE(out05), 
        .NXT(out07), .OUT(out06) );
  COMPARE_42 C07 ( .clk(clk), .RST(RST), .INS({n92, n88, n37, n28, n82, n78, 
        n21, n12}), .DEL({n75, n2, n69, n65, n58, n54, n53, n49}), .PRE(out06), 
        .NXT(out08), .OUT(out07) );
  COMPARE_41 C08 ( .clk(clk), .RST(n97), .INS({n92, n88, n39, n30, n82, n78, 
        n23, n14}), .DEL({n75, n4, n69, n65, n58, n54, n53, n49}), .PRE(out07), 
        .NXT(out09), .OUT(out08) );
  COMPARE_40 C09 ( .clk(clk), .RST(n98), .INS({n92, n88, n38, n29, n82, n78, 
        n22, n13}), .DEL({n75, n3, n69, n65, n58, n54, n53, n49}), .PRE(out08), 
        .NXT(out10), .OUT(out09) );
  COMPARE_39 C10 ( .clk(clk), .RST(n96), .INS({n92, n88, n37, n28, n82, n78, 
        n21, n12}), .DEL({n75, n2, n69, n65, n58, n54, n53, n49}), .PRE(out09), 
        .NXT(out11), .OUT(out10) );
  COMPARE_38 C11 ( .clk(clk), .RST(n98), .INS({n92, n88, n39, n30, n82, n78, 
        n23, n14}), .DEL({n74, n4, n69, n65, n58, n54, n53, n49}), .PRE(out10), 
        .NXT(out12), .OUT(out11) );
  COMPARE_37 C12 ( .clk(clk), .RST(RST), .INS({n92, n88, n38, n29, n82, n78, 
        n22, n13}), .DEL({n74, n3, n69, n65, n58, n54, n53, n49}), .PRE(out11), 
        .NXT(out13), .OUT(out12) );
  COMPARE_36 C13 ( .clk(clk), .RST(n97), .INS({n93, n88, n37, n28, n82, n79, 
        n21, n12}), .DEL({n74, n2, n69, n65, n59, n55, n53, n49}), .PRE(out12), 
        .NXT(out14), .OUT(out13) );
  COMPARE_35 C14 ( .clk(clk), .RST(n96), .INS({n93, n89, n40, n31, n83, n79, 
        n24, n15}), .DEL({n74, n5, n68, n64, n59, n55, n52, n48}), .PRE(out13), 
        .NXT(out15), .OUT(out14) );
  COMPARE_34 C15 ( .clk(clk), .RST(n97), .INS({n93, n89, n42, n33, n83, n79, 
        n25, n17}), .DEL({n74, n7, n68, n64, n59, n55, n52, n48}), .PRE(out14), 
        .NXT(out16), .OUT(out15) );
  COMPARE_33 C16 ( .clk(clk), .RST(n97), .INS({n93, n89, n41, n32, n83, n79, 
        w_INS[1], n16}), .DEL({n74, n6, n68, n64, n59, n55, n52, n48}), .PRE(
        out15), .NXT(out17), .OUT(out16) );
  COMPARE_32 C17 ( .clk(clk), .RST(n98), .INS({n93, n89, n40, n31, n83, n79, 
        n24, n15}), .DEL({n74, n5, n68, n64, n59, n55, n52, n48}), .PRE(out16), 
        .NXT(out18), .OUT(out17) );
  COMPARE_31 C18 ( .clk(clk), .RST(n98), .INS({n93, n89, n42, n33, n83, n79, 
        n25, n17}), .DEL({n74, n7, n68, n64, n59, n55, n52, n48}), .PRE(out17), 
        .NXT(out19), .OUT(out18) );
  COMPARE_30 C19 ( .clk(clk), .RST(n98), .INS({n93, n89, n41, n32, n83, n79, 
        w_INS[1], n16}), .DEL({n74, n6, n68, n64, n59, n55, n52, n48}), .PRE(
        out18), .NXT(out20), .OUT(out19) );
  COMPARE_29 C20 ( .clk(clk), .RST(RST), .INS({n93, n89, n40, n31, n83, n79, 
        n24, n15}), .DEL({n74, n5, n68, n64, n59, n55, n52, n48}), .PRE(out19), 
        .NXT(out21), .OUT(out20) );
  COMPARE_28 C21 ( .clk(clk), .RST(n98), .INS({n93, n89, n42, n33, n83, n79, 
        n25, n17}), .DEL({n74, n7, n68, n64, n59, n55, n52, n48}), .PRE(out20), 
        .NXT(out22), .OUT(out21) );
  COMPARE_27 C22 ( .clk(clk), .RST(RST), .INS({n93, n89, n41, n32, n83, n79, 
        w_INS[1], n16}), .DEL({n74, n6, n68, n64, n59, n55, n52, n48}), .PRE(
        out21), .NXT(out23), .OUT(out22) );
  COMPARE_26 C23 ( .clk(clk), .RST(n96), .INS({n93, n89, n40, n31, n83, n79, 
        n24, n15}), .DEL({n74, n5, n68, n64, n59, n55, n52, n48}), .PRE(out22), 
        .NXT(MED), .OUT(out23) );
  COMPARE_25 C24 ( .clk(clk), .RST(RST), .INS({n93, n89, n42, n33, n83, n79, 
        n25, n17}), .DEL({n73, n7, n68, n64, n59, n55, n52, n48}), .PRE(out23), 
        .NXT(out25), .OUT(MED) );
  COMPARE_24 C25 ( .clk(clk), .RST(n96), .INS({n94, n89, n41, n32, n83, n80, 
        w_INS[1], n16}), .DEL({n73, n6, n68, n64, n60, n56, n52, n48}), .PRE(
        MED), .NXT(out26), .OUT(out25) );
  COMPARE_23 C26 ( .clk(clk), .RST(n97), .INS({n94, n89, n40, n31, n83, n80, 
        n24, n15}), .DEL({n73, n5, n67, n63, n60, n56, n51, n47}), .PRE(out25), 
        .NXT(out27), .OUT(out26) );
  COMPARE_22 C27 ( .clk(clk), .RST(RST), .INS({n94, n90, n43, n34, n84, n80, 
        n26, n18}), .DEL({n73, n8, n67, n63, n60, n56, n51, n47}), .PRE(out26), 
        .NXT(out28), .OUT(out27) );
  COMPARE_21 C28 ( .clk(clk), .RST(n97), .INS({n94, n90, n87, n35, n84, n80, 
        n77, n19}), .DEL({n73, n10, n67, n63, n60, n56, n51, n47}), .PRE(out27), .NXT(out29), .OUT(out28) );
  COMPARE_20 C29 ( .clk(clk), .RST(n96), .INS({n94, n90, n44, n29, n84, n80, 
        n77, n76}), .DEL({n73, n9, n67, n63, n60, n56, n51, n47}), .PRE(out28), 
        .NXT(out30), .OUT(out29) );
  COMPARE_19 C30 ( .clk(clk), .RST(n96), .INS({n94, n90, n43, n34, n84, n80, 
        n26, n18}), .DEL({n73, n8, n67, n63, n60, n56, n51, n47}), .PRE(out29), 
        .NXT(out31), .OUT(out30) );
  COMPARE_18 C31 ( .clk(clk), .RST(n98), .INS({n94, n90, n87, n35, n84, n80, 
        n77, n19}), .DEL({n73, n10, n67, n63, n60, n56, n51, n47}), .PRE(out30), .NXT(out32), .OUT(out31) );
  COMPARE_17 C32 ( .clk(clk), .RST(n97), .INS({n94, n90, n44, n86, n84, n80, 
        n77, n19}), .DEL({n73, n9, n67, n63, n60, n56, n51, n47}), .PRE(out31), 
        .NXT(out33), .OUT(out32) );
  COMPARE_16 C33 ( .clk(clk), .RST(n97), .INS({n94, n90, n43, n34, n84, n80, 
        n26, n18}), .DEL({n73, n8, n67, n63, n60, n56, n51, n47}), .PRE(out32), 
        .NXT(out34), .OUT(out33) );
  COMPARE_15 C34 ( .clk(clk), .RST(RST), .INS({n94, n90, n39, n35, n84, n80, 
        n77, n19}), .DEL({n73, n10, n67, n63, n60, n56, n51, n47}), .PRE(out33), .NXT(out35), .OUT(out34) );
  COMPARE_14 C35 ( .clk(clk), .RST(n98), .INS({n94, n90, n44, n86, n84, n80, 
        n77, n17}), .DEL({n73, n9, n67, n63, n60, n56, n51, n47}), .PRE(out34), 
        .NXT(out36), .OUT(out35) );
  COMPARE_13 C36 ( .clk(clk), .RST(n98), .INS({n94, n90, n43, n34, n84, n80, 
        n26, n18}), .DEL({n73, n8, n67, n63, n60, n56, n51, n47}), .PRE(out35), 
        .NXT(out37), .OUT(out36) );
  COMPARE_12 C37 ( .clk(clk), .RST(n96), .INS({n95, n90, n38, n35, n84, n81, 
        n77, n19}), .DEL({n72, n10, n67, n63, n61, n57, n51, n47}), .PRE(out36), .NXT(out38), .OUT(out37) );
  COMPARE_11 C38 ( .clk(clk), .RST(n96), .INS({n95, n90, n44, n30, n84, n81, 
        n77, n16}), .DEL({n72, n9, n66, n62, n61, n57, n50, n46}), .PRE(out37), 
        .NXT(out39), .OUT(out38) );
  COMPARE_10 C39 ( .clk(clk), .RST(n98), .INS({n95, n90, n43, n34, n84, n81, 
        n26, n18}), .DEL({n72, n8, n66, n62, n61, n57, n50, n46}), .PRE(out38), 
        .NXT(out40), .OUT(out39) );
  COMPARE_9 C40 ( .clk(clk), .RST(n99), .INS({n95, n91, n87, n86, n85, n81, 
        n77, n76}), .DEL({n72, n71, n66, n62, n61, n57, n50, n46}), .PRE(out39), .NXT(out41), .OUT(out40) );
  COMPARE_8 C41 ( .clk(clk), .RST(n99), .INS({n95, n91, n87, n86, n85, n81, 
        n77, n76}), .DEL({n72, n71, n66, n62, n61, n57, n50, n46}), .PRE(out40), .NXT(out42), .OUT(out41) );
  COMPARE_7 C42 ( .clk(clk), .RST(n99), .INS({n95, n91, n87, n86, n85, n81, 
        n77, n76}), .DEL({n72, n71, n66, n62, n61, n57, n50, n46}), .PRE(out41), .NXT(out43), .OUT(out42) );
  COMPARE_6 C43 ( .clk(clk), .RST(n99), .INS({n95, n91, n87, n86, n85, n81, 
        n77, n76}), .DEL({n72, n71, n66, n62, n61, n57, n50, n46}), .PRE(out42), .NXT(out44), .OUT(out43) );
  COMPARE_5 C44 ( .clk(clk), .RST(n99), .INS({n95, n91, n87, n86, n85, n81, 
        n77, n76}), .DEL({n72, n71, n66, n62, n61, n57, n50, n46}), .PRE(out43), .NXT(out45), .OUT(out44) );
  COMPARE_4 C45 ( .clk(clk), .RST(n99), .INS({n95, n91, n87, n86, n85, n81, 
        n77, n76}), .DEL({n72, n71, n66, n62, n61, n57, n50, n46}), .PRE(out44), .NXT(out46), .OUT(out45) );
  COMPARE_3 C46 ( .clk(clk), .RST(n99), .INS({n95, n91, n87, n86, n85, n81, 
        n77, n76}), .DEL({n72, n71, n66, n62, n61, n57, n50, n46}), .PRE(out45), .NXT(out47), .OUT(out46) );
  COMPARE_2 C47 ( .clk(clk), .RST(n99), .INS({n95, n91, n87, n86, n85, n81, 
        n77, n76}), .DEL({n72, n71, n66, n62, n61, n57, n50, n46}), .PRE(out46), .NXT(out48), .OUT(out47) );
  COMPARE_1 C48 ( .clk(clk), .RST(n99), .INS({n95, n91, n87, n86, n85, n81, 
        n77, n76}), .DEL({n72, n71, n66, n62, n61, n57, n50, n46}), .PRE(out47), .NXT({1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), .OUT(out48) );
  CLKINVX1 U3 ( .A(n11), .Y(n12) );
  CLKINVX1 U4 ( .A(n20), .Y(n21) );
  CLKINVX1 U5 ( .A(n11), .Y(n15) );
  CLKINVX1 U6 ( .A(n20), .Y(n24) );
  CLKINVX1 U7 ( .A(n11), .Y(n18) );
  CLKINVX1 U8 ( .A(n20), .Y(n26) );
  CLKINVX1 U9 ( .A(n27), .Y(n28) );
  CLKINVX1 U10 ( .A(n27), .Y(n31) );
  CLKINVX1 U11 ( .A(n27), .Y(n34) );
  CLKINVX1 U12 ( .A(n36), .Y(n37) );
  CLKINVX1 U13 ( .A(n36), .Y(n40) );
  CLKINVX1 U14 ( .A(n36), .Y(n43) );
  CLKINVX1 U15 ( .A(n1), .Y(n2) );
  CLKINVX1 U16 ( .A(n1), .Y(n5) );
  CLKINVX1 U17 ( .A(n1), .Y(n8) );
  CLKINVX1 U18 ( .A(n11), .Y(n14) );
  CLKINVX1 U19 ( .A(n20), .Y(n23) );
  CLKINVX1 U20 ( .A(n11), .Y(n13) );
  CLKINVX1 U21 ( .A(n20), .Y(n22) );
  CLKINVX1 U22 ( .A(n11), .Y(n17) );
  CLKINVX1 U23 ( .A(n20), .Y(n25) );
  CLKINVX1 U24 ( .A(n11), .Y(n16) );
  CLKINVX1 U25 ( .A(n11), .Y(n19) );
  CLKINVX1 U26 ( .A(n27), .Y(n30) );
  CLKINVX1 U27 ( .A(n27), .Y(n29) );
  CLKINVX1 U28 ( .A(n27), .Y(n33) );
  CLKINVX1 U29 ( .A(n27), .Y(n32) );
  CLKINVX1 U30 ( .A(n27), .Y(n35) );
  CLKINVX1 U31 ( .A(n36), .Y(n39) );
  CLKINVX1 U32 ( .A(n36), .Y(n38) );
  CLKINVX1 U33 ( .A(n36), .Y(n42) );
  CLKINVX1 U34 ( .A(n36), .Y(n41) );
  CLKINVX1 U35 ( .A(n36), .Y(n44) );
  CLKINVX1 U36 ( .A(n1), .Y(n4) );
  CLKINVX1 U37 ( .A(n1), .Y(n3) );
  CLKINVX1 U38 ( .A(n1), .Y(n7) );
  CLKINVX1 U39 ( .A(n1), .Y(n6) );
  CLKINVX1 U40 ( .A(n1), .Y(n10) );
  CLKINVX1 U41 ( .A(n1), .Y(n9) );
  CLKINVX1 U42 ( .A(w_INS[0]), .Y(n11) );
  CLKINVX1 U43 ( .A(w_INS[1]), .Y(n20) );
  CLKINVX1 U44 ( .A(w_INS[4]), .Y(n27) );
  CLKINVX1 U45 ( .A(w_INS[5]), .Y(n36) );
  CLKINVX1 U46 ( .A(n70), .Y(n1) );
  CLKBUFX3 U47 ( .A(w_INS[3]), .Y(n82) );
  CLKBUFX3 U48 ( .A(w_INS[3]), .Y(n83) );
  CLKBUFX3 U49 ( .A(w_INS[3]), .Y(n84) );
  CLKBUFX3 U50 ( .A(w_INS[6]), .Y(n88) );
  CLKBUFX3 U51 ( .A(w_INS[6]), .Y(n89) );
  CLKBUFX3 U52 ( .A(w_INS[6]), .Y(n90) );
  CLKBUFX3 U53 ( .A(w_INS[0]), .Y(n76) );
  CLKBUFX3 U54 ( .A(w_INS[1]), .Y(n77) );
  CLKBUFX3 U55 ( .A(w_INS[4]), .Y(n86) );
  CLKBUFX3 U56 ( .A(w_INS[5]), .Y(n87) );
  CLKBUFX3 U57 ( .A(w_DEL[6]), .Y(n71) );
  OR2X1 U58 ( .A(DEL[2]), .B(n45), .Y(w_DEL[2]) );
  OR2X1 U59 ( .A(DEL[0]), .B(n45), .Y(w_DEL[0]) );
  OR2X1 U60 ( .A(DEL[1]), .B(n45), .Y(w_DEL[1]) );
  OR2X1 U61 ( .A(INS[2]), .B(n45), .Y(w_INS[2]) );
  OR2X1 U62 ( .A(DEL[3]), .B(n45), .Y(w_DEL[3]) );
  OR2X1 U63 ( .A(DEL[4]), .B(n45), .Y(w_DEL[4]) );
  OR2X1 U64 ( .A(DEL[5]), .B(n45), .Y(w_DEL[5]) );
  OR2X1 U65 ( .A(n45), .B(INS[7]), .Y(w_INS[7]) );
  CLKBUFX3 U66 ( .A(n97), .Y(n99) );
  CLKBUFX3 U67 ( .A(w_DEL[2]), .Y(n54) );
  CLKBUFX3 U68 ( .A(w_DEL[2]), .Y(n55) );
  CLKBUFX3 U69 ( .A(w_DEL[2]), .Y(n56) );
  CLKBUFX3 U70 ( .A(w_DEL[2]), .Y(n57) );
  CLKBUFX3 U71 ( .A(w_DEL[0]), .Y(n49) );
  CLKBUFX3 U72 ( .A(w_DEL[0]), .Y(n48) );
  CLKBUFX3 U73 ( .A(w_DEL[0]), .Y(n47) );
  CLKBUFX3 U74 ( .A(w_DEL[0]), .Y(n46) );
  CLKBUFX3 U75 ( .A(w_INS[2]), .Y(n80) );
  CLKBUFX3 U76 ( .A(w_INS[2]), .Y(n78) );
  CLKBUFX3 U77 ( .A(w_INS[2]), .Y(n79) );
  CLKBUFX3 U78 ( .A(w_INS[2]), .Y(n81) );
  CLKBUFX3 U79 ( .A(w_DEL[3]), .Y(n58) );
  CLKBUFX3 U80 ( .A(w_DEL[3]), .Y(n59) );
  CLKBUFX3 U81 ( .A(w_DEL[3]), .Y(n60) );
  CLKBUFX3 U82 ( .A(w_DEL[3]), .Y(n61) );
  CLKBUFX3 U83 ( .A(w_INS[3]), .Y(n85) );
  CLKBUFX3 U84 ( .A(w_INS[6]), .Y(n91) );
  CLKBUFX3 U85 ( .A(w_DEL[6]), .Y(n70) );
  CLKBUFX3 U86 ( .A(w_DEL[4]), .Y(n65) );
  CLKBUFX3 U87 ( .A(w_DEL[4]), .Y(n64) );
  CLKBUFX3 U88 ( .A(w_DEL[4]), .Y(n63) );
  CLKBUFX3 U89 ( .A(w_DEL[4]), .Y(n62) );
  CLKBUFX3 U90 ( .A(w_DEL[1]), .Y(n53) );
  CLKBUFX3 U91 ( .A(w_DEL[1]), .Y(n52) );
  CLKBUFX3 U92 ( .A(w_DEL[1]), .Y(n51) );
  CLKBUFX3 U93 ( .A(w_DEL[1]), .Y(n50) );
  CLKBUFX3 U94 ( .A(w_DEL[5]), .Y(n69) );
  CLKBUFX3 U95 ( .A(w_DEL[5]), .Y(n68) );
  CLKBUFX3 U96 ( .A(w_DEL[5]), .Y(n67) );
  CLKBUFX3 U97 ( .A(w_DEL[5]), .Y(n66) );
  CLKBUFX3 U98 ( .A(w_INS[7]), .Y(n92) );
  CLKBUFX3 U99 ( .A(w_INS[7]), .Y(n93) );
  CLKBUFX3 U100 ( .A(w_INS[7]), .Y(n94) );
  CLKBUFX3 U101 ( .A(w_INS[7]), .Y(n95) );
  CLKBUFX3 U102 ( .A(w_DEL[7]), .Y(n74) );
  CLKBUFX3 U103 ( .A(w_DEL[7]), .Y(n73) );
  CLKBUFX3 U104 ( .A(w_DEL[7]), .Y(n72) );
  CLKBUFX3 U105 ( .A(w_DEL[7]), .Y(n75) );
  CLKBUFX3 U106 ( .A(n96), .Y(n98) );
  OR2X1 U107 ( .A(INS[0]), .B(n45), .Y(w_INS[0]) );
  CLKBUFX3 U108 ( .A(SEN), .Y(n45) );
  OR2X1 U109 ( .A(INS[1]), .B(n45), .Y(w_INS[1]) );
  OR2X1 U110 ( .A(INS[4]), .B(n45), .Y(w_INS[4]) );
  OR2X1 U111 ( .A(INS[3]), .B(n45), .Y(w_INS[3]) );
  OR2X1 U112 ( .A(INS[5]), .B(n45), .Y(w_INS[5]) );
  OR2X1 U113 ( .A(DEL[6]), .B(n45), .Y(w_DEL[6]) );
  OR2X1 U114 ( .A(INS[6]), .B(n45), .Y(w_INS[6]) );
  OR2X1 U115 ( .A(DEL[7]), .B(n45), .Y(w_DEL[7]) );
  CLKBUFX3 U116 ( .A(RST), .Y(n97) );
  CLKBUFX3 U117 ( .A(RST), .Y(n96) );
endmodule


module LMFE_1 ( clk, reset, Din, in_en, busy, out_valid, Dout );
  input [7:0] Din;
  output [7:0] Dout;
  input clk, reset, in_en;
  output busy, out_valid;
  wire   chip_enable, write_enable, sort_enable;
  wire   [7:0] sram_out;
  wire   [7:0] sort_median;
  wire   [9:0] sram_address;
  wire   [7:0] sram_in;
  wire   [7:0] sort_insert;
  wire   [7:0] sort_delete;

  sram_1024x8_t13 sram1 ( .Q(sram_out), .A(sram_address), .D(sram_in), .CLK(
        clk), .CEN(chip_enable), .WEN(write_enable) );
  filter_ctrl lmfe_filter_ctrl1 ( .clk(clk), .RST(reset), .IEN(in_en), .DIN(
        Din), .Q(sram_out), .MED(sort_median), .A(sram_address), .D(sram_in), 
        .CE(chip_enable), .WE(write_enable), .SE(sort_enable), .INS(
        sort_insert), .DEL(sort_delete), .DOUT(Dout), .OV(out_valid), .BZ(busy) );
  lmfe_med49 lmfe_med491 ( .clk(clk), .RST(reset), .SEN(sort_enable), .INS(
        sort_insert), .DEL(sort_delete), .MED(sort_median) );
endmodule

