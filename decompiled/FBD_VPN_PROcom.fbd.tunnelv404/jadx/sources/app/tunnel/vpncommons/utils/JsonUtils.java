package app.tunnel.vpncommons.utils;

import android.content.Context;
import defpackage.C0911xb481c09f;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import org.json.JSONArray;

/* loaded from: classes.dex */
public class JsonUtils {
    public static Comparator getComparator(Context context, String str, int i) {
        return new C0911xb481c09f(context, i, str);
    }

    public static JSONArray sort(JSONArray jSONArray, Comparator comparator) {
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(jSONArray.opt(i));
        }
        Collections.sort(arrayList, comparator);
        JSONArray jSONArray2 = new JSONArray();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            jSONArray2.put(it.next());
        }
        return jSONArray2;
    }
}
