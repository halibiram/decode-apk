package com.android.volley.toolbox;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.android.volley.Cache;
import com.android.volley.Header;
import com.android.volley.NetworkResponse;
import com.android.volley.VolleyLog;
import com.panda912.muddy.ObfuscatedString;
import j$.util.DesugarTimeZone;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;

/* loaded from: classes.dex */
public class HttpHeaderParser {

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final String HEADER_CONTENT_TYPE = new ObfuscatedString(new long[]{9161145125007185750L, -2680135647909045193L, -338552146159587694L}).toString();
    private static final String DEFAULT_CONTENT_CHARSET = new ObfuscatedString(new long[]{206565629417100723L, -4377794869936745589L, -1145549837192652325L}).toString();
    private static final String RFC1123_PARSE_FORMAT = new ObfuscatedString(new long[]{2336863731039044392L, 884185976572202630L, -5015256941884704666L, 5113670204033955758L, 936526646821175830L}).toString();
    private static final String RFC1123_OUTPUT_FORMAT = new ObfuscatedString(new long[]{-8053188984824396279L, -8813598615942248352L, -8842191832301650131L, 1047124040019119327L, 853047307582136914L}).toString();

    public static List<Header> combineHeaders(List<Header> list, Cache.Entry entry) {
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        if (!list.isEmpty()) {
            Iterator<Header> it = list.iterator();
            while (it.hasNext()) {
                treeSet.add(it.next().getName());
            }
        }
        ArrayList arrayList = new ArrayList(list);
        List<Header> list2 = entry.allResponseHeaders;
        if (list2 != null) {
            if (!list2.isEmpty()) {
                for (Header header : entry.allResponseHeaders) {
                    if (!treeSet.contains(header.getName())) {
                        arrayList.add(header);
                    }
                }
            }
        } else if (!entry.responseHeaders.isEmpty()) {
            for (Map.Entry<String, String> entry2 : entry.responseHeaders.entrySet()) {
                if (!treeSet.contains(entry2.getKey())) {
                    arrayList.add(new Header(entry2.getKey(), entry2.getValue()));
                }
            }
        }
        return arrayList;
    }

    public static String formatEpochAsRfc1123(long j) {
        return newUsGmtFormatter(new ObfuscatedString(new long[]{8066162892496625964L, 3980792127827782946L, 7203142120285355181L, 3503937757070678273L, -4921549099775905837L}).toString()).format(new Date(j));
    }

    public static Map<String, String> getCacheHeaders(Cache.Entry entry) {
        if (entry == null) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap();
        if (entry.etag != null) {
            hashMap.put(new ObfuscatedString(new long[]{3161763978531875468L, 2115523090598948511L, 6738620181206560296L}).toString(), entry.etag);
        }
        if (entry.lastModified > 0) {
            hashMap.put(new ObfuscatedString(new long[]{2467018330052878440L, -1320531764176167876L, -6545589774772553273L, -4712525475841713692L}).toString(), formatEpochAsRfc1123(entry.lastModified));
        }
        return hashMap;
    }

    private static SimpleDateFormat newUsGmtFormatter(String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, Locale.US);
        simpleDateFormat.setTimeZone(DesugarTimeZone.getTimeZone(new ObfuscatedString(new long[]{2096548977485394337L, 5269971079985314267L}).toString()));
        return simpleDateFormat;
    }

    @Nullable
    public static Cache.Entry parseCacheHeaders(NetworkResponse networkResponse) {
        long j;
        long j2;
        long j3;
        long j4;
        long j5;
        long j6;
        long j7;
        long j8;
        boolean z = true;
        long currentTimeMillis = System.currentTimeMillis();
        Map<String, String> map = networkResponse.headers;
        if (map == null) {
            return null;
        }
        String str = map.get(new ObfuscatedString(new long[]{6416760709213298030L, 2636712565176758597L}).toString());
        if (str != null) {
            j = parseDateAsEpoch(str);
        } else {
            j = 0;
        }
        String str2 = map.get(new ObfuscatedString(new long[]{790962596686628568L, -5229488792551396629L, 354348988131692344L}).toString());
        int i = 0;
        if (str2 != null) {
            String[] split = str2.split(new ObfuscatedString(new long[]{-1764800557519529074L, 8593684395232540971L}).toString(), 0);
            int i2 = 0;
            j2 = 0;
            j3 = 0;
            while (i < split.length) {
                String trim = split[i].trim();
                if (trim.equals(new ObfuscatedString(new long[]{-4228402196263871694L, 8787141173176159267L}).toString()) || trim.equals(new ObfuscatedString(new long[]{1201896734720567935L, 8321658841601728535L}).toString())) {
                    return null;
                }
                if (trim.startsWith(new ObfuscatedString(new long[]{-5338956418055331409L, -765578697298873485L}).toString())) {
                    try {
                        j2 = Long.parseLong(trim.substring(8));
                    } catch (Exception unused) {
                    }
                } else if (trim.startsWith(new ObfuscatedString(new long[]{2208788407667865796L, -926291317083897303L, 5061736057048860606L, 3172523428675418636L}).toString())) {
                    j3 = Long.parseLong(trim.substring(23));
                } else if (trim.equals(new ObfuscatedString(new long[]{-1236453340667476787L, -9029221567842298718L, -3557362765437184902L}).toString()) || trim.equals(new ObfuscatedString(new long[]{778245278725643799L, 5641900028159840061L, 465853200150608697L}).toString())) {
                    i2 = 1;
                }
                i++;
            }
            i = i2;
        } else {
            z = false;
            j2 = 0;
            j3 = 0;
        }
        String str3 = map.get(new ObfuscatedString(new long[]{-3482346222172177128L, 1458354823622518066L}).toString());
        if (str3 != null) {
            j4 = parseDateAsEpoch(str3);
        } else {
            j4 = 0;
        }
        String str4 = map.get(new ObfuscatedString(new long[]{2767575651628500216L, -760937045862850120L, -963583492217288845L}).toString());
        if (str4 != null) {
            j5 = parseDateAsEpoch(str4);
        } else {
            j5 = 0;
        }
        String str5 = map.get(new ObfuscatedString(new long[]{2067949617725656506L, 5545228807893762282L}).toString());
        if (z) {
            j7 = (j2 * 1000) + currentTimeMillis;
            if (i != 0) {
                j8 = j7;
            } else {
                Long.signum(j3);
                j8 = (j3 * 1000) + j7;
            }
            j6 = j8;
        } else {
            j6 = 0;
            if (j > 0 && j4 >= j) {
                j7 = (j4 - j) + currentTimeMillis;
                j6 = j7;
            } else {
                j7 = 0;
            }
        }
        Cache.Entry entry = new Cache.Entry();
        entry.data = networkResponse.data;
        entry.etag = str5;
        entry.softTtl = j7;
        entry.ttl = j6;
        entry.serverDate = j;
        entry.lastModified = j5;
        entry.responseHeaders = map;
        entry.allResponseHeaders = networkResponse.allHeaders;
        return entry;
    }

    public static String parseCharset(@Nullable Map<String, String> map, String str) {
        String str2;
        if (map != null && (str2 = map.get(new ObfuscatedString(new long[]{-502146442765437602L, 8876725275969005760L, -7036662573524995385L}).toString())) != null) {
            String[] split = str2.split(new ObfuscatedString(new long[]{-2594032776670784062L, -3530913334695391206L}).toString(), 0);
            for (int i = 1; i < split.length; i++) {
                String[] split2 = split[i].trim().split(new ObfuscatedString(new long[]{3415718806545542888L, 3209383085757110101L}).toString(), 0);
                if (split2.length == 2 && split2[0].equals(new ObfuscatedString(new long[]{7414329960844510499L, 2343396099954429746L}).toString())) {
                    return split2[1];
                }
            }
        }
        return str;
    }

    public static long parseDateAsEpoch(String str) {
        try {
            return newUsGmtFormatter(new ObfuscatedString(new long[]{3142446997457650785L, -3708892634195295059L, -8943642404463588516L, 1823070327858112163L, 9142938094796935915L}).toString()).parse(str).getTime();
        } catch (ParseException e) {
            String obfuscatedString = new ObfuscatedString(new long[]{1501008618832983081L, -7786834538555106077L, -2496260888910778120L, 4978307766045531350L, -420425682833804061L, 7625512831255018962L, 4663122935374241628L}).toString();
            if (!new ObfuscatedString(new long[]{419463445712437841L, 3556022618746989640L}).toString().equals(str) && !new ObfuscatedString(new long[]{-6780088021313323093L, -5532948349852862361L}).toString().equals(str)) {
                VolleyLog.e(e, obfuscatedString, str);
                return 0L;
            }
            VolleyLog.v(obfuscatedString, str);
            return 0L;
        }
    }

    public static List<Header> toAllHeaderList(Map<String, String> map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            arrayList.add(new Header(entry.getKey(), entry.getValue()));
        }
        return arrayList;
    }

    public static Map<String, String> toHeaderMap(List<Header> list) {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (Header header : list) {
            treeMap.put(header.getName(), header.getValue());
        }
        return treeMap;
    }

    public static String parseCharset(@Nullable Map<String, String> map) {
        return parseCharset(map, new ObfuscatedString(new long[]{-3786359631350752009L, -1676651540322406942L, -6598673184787379008L}).toString());
    }
}
