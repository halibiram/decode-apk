package net.openvpn.openvpn;

import android.content.Context;
import app.tunnel.vpncommons.utils.FileUtils;
import defpackage.AbstractC0362x4440ab85;
import java.io.BufferedReader;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Iterator;
import java.util.TreeMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

/* loaded from: classes3.dex */
public class ProxyList {
    private static final String TAG = "ProxyList";
    private String backing_file = null;
    private Context context = null;
    private boolean dirty = false;
    private String enabled_name = null;
    private TreeMap<String, Item> list = new TreeMap<>(String.CASE_INSENSITIVE_ORDER);
    private String none_name;

    /* loaded from: classes3.dex */
    public static class InternalError extends RuntimeException {
    }

    /* loaded from: classes3.dex */
    public static class Item {
        public boolean allow_cleartext_auth = false;
        public String friendly_name = null;
        public String host = "";
        public String password = "";
        public String port = "";
        public boolean remember_creds = false;
        public String username = "";

        /* JADX INFO: Access modifiers changed from: private */
        public JSONObject persist() {
            try {
                JSONObject jSONObject = new JSONObject();
                String str = this.friendly_name;
                if (str != null) {
                    jSONObject.put("friendly_name", str);
                }
                jSONObject.put("host", this.host);
                jSONObject.put("port", this.port);
                jSONObject.put("remember_creds", this.remember_creds);
                jSONObject.put("allow_cleartext_auth", this.allow_cleartext_auth);
                if (!this.remember_creds) {
                    return jSONObject;
                }
                jSONObject.put("username", this.username);
                jSONObject.put("password", this.password);
                return jSONObject;
            } catch (JSONException unused) {
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Item unpersist(JSONObject jSONObject) {
            try {
                Item item = new Item();
                if (jSONObject.isNull("friendly_name")) {
                    item.friendly_name = null;
                } else {
                    item.friendly_name = jSONObject.getString("friendly_name");
                }
                item.host = jSONObject.getString("host");
                item.port = jSONObject.getString("port");
                item.remember_creds = jSONObject.getBoolean("remember_creds");
                item.allow_cleartext_auth = jSONObject.getBoolean("allow_cleartext_auth");
                if (!jSONObject.isNull("username")) {
                    item.username = jSONObject.getString("username");
                }
                if (jSONObject.isNull("password")) {
                    return item;
                }
                item.password = jSONObject.getString("password");
                return item;
            } catch (JSONException unused) {
                return null;
            }
        }

        public boolean invalidate_creds() {
            if (!this.remember_creds) {
                return false;
            }
            this.username = "";
            this.password = "";
            this.remember_creds = false;
            return true;
        }

        public boolean is_valid() {
            if (this.host.length() > 0 && this.port.length() > 0) {
                return true;
            }
            return false;
        }

        public String name() {
            String str = this.friendly_name;
            if (str != null) {
                return str;
            }
            return AbstractC0362x4440ab85.m2953x742e2fda(this.host, ":", this.port);
        }
    }

    public ProxyList(String str) {
        this.none_name = null;
        if (str != null) {
            this.none_name = str;
            set_enabled(null);
            return;
        }
        throw new InternalError();
    }

    private JSONObject persist() {
        try {
            JSONObject jSONObject = new JSONObject();
            String str = get_enabled(false);
            if (str != null) {
                jSONObject.put("enabled_name", str);
            }
            JSONArray jSONArray = new JSONArray();
            Iterator<Item> it = this.list.values().iterator();
            while (it.hasNext()) {
                JSONObject persist = it.next().persist();
                if (persist != null) {
                    jSONArray.put(persist);
                }
            }
            jSONObject.put("list", jSONArray);
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    public static String readAsset(Context context, String str) {
        return readStream(context.getResources().getAssets().open(str), 0L, str);
    }

    public static String readFileAppPrivate(Context context, String str) {
        return readStream(context.openFileInput(str), 0L, str);
    }

    public static String readStream(InputStream inputStream, long j, String str) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
            StringBuilder sb = new StringBuilder();
            char[] cArr = new char[4096];
            while (true) {
                int read = bufferedReader.read(cArr, 0, 4096);
                if (read <= 0) {
                    return sb.toString();
                }
                sb.append(cArr, 0, read);
                if (j > 0 && sb.length() > j) {
                    throw new FileUtils.FileTooLarge(str, j);
                }
            }
        } finally {
            inputStream.close();
        }
    }

    private static ProxyList unpersist(JSONObject jSONObject, String str) {
        try {
            ProxyList proxyList = new ProxyList(str);
            if (!jSONObject.isNull("enabled_name")) {
                proxyList.enabled_name = jSONObject.getString("enabled_name");
            }
            JSONArray jSONArray = jSONObject.getJSONArray("list");
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                proxyList.put(Item.unpersist(jSONArray.getJSONObject(i)));
            }
            proxyList.set_enabled(null);
            return proxyList;
        } catch (JSONException unused) {
            return null;
        }
    }

    public static void writeFileAppPrivate(Context context, String str, String str2) {
        FileOutputStream openFileOutput = context.openFileOutput(str, 0);
        try {
            openFileOutput.write(str2.getBytes());
        } finally {
            openFileOutput.close();
        }
    }

    public void forget_creds(String str) {
        forget_creds(get(str));
    }

    public Item get(String str) {
        if (is_none(str)) {
            return null;
        }
        return this.list.get(str);
    }

    public String get_enabled(boolean z) {
        if (!z && is_none(this.enabled_name)) {
            return null;
        }
        return this.enabled_name;
    }

    public Item get_enabled_item() {
        return get(this.enabled_name);
    }

    public String[] get_name_list(boolean z) {
        int size = this.list.size();
        String[] strArr = (String[]) this.list.keySet().toArray(new String[(z ? 1 : 0) + size]);
        if (z) {
            strArr[size] = this.none_name;
        }
        return strArr;
    }

    public boolean has_saved_creds(String str) {
        Item item = get(str);
        if (item != null && item.username.length() > 0) {
            return true;
        }
        return false;
    }

    public boolean is_none(String str) {
        if (str != null && !str.equals(this.none_name)) {
            return false;
        }
        return true;
    }

    public void load() {
        try {
            if (this.backing_file != null) {
                ProxyList unpersist = unpersist((JSONObject) new JSONTokener(readFileAppPrivate(this.context, this.backing_file)).nextValue(), this.none_name);
                this.list = unpersist.list;
                this.enabled_name = unpersist.enabled_name;
                this.dirty = false;
            }
        } catch (IOException | Exception unused) {
        }
    }

    public void put(Item item) {
        if (item != null) {
            String name = item.name();
            if (!is_none(name)) {
                this.list.put(name, item);
                this.dirty = true;
            }
        }
    }

    public void remove(String str) {
        if (!is_none(str)) {
            this.list.remove(str);
            set_enabled(null);
            this.dirty = true;
        }
    }

    public void save() {
        String str;
        try {
            if (this.dirty && (str = this.backing_file) != null) {
                writeFileAppPrivate(this.context, str, persist().toString(4));
                this.dirty = false;
            }
        } catch (Exception unused) {
        }
    }

    public void set_backing_file(Context context, String str) {
        this.context = context;
        this.backing_file = str;
    }

    public void set_enabled(String str) {
        String str2 = this.enabled_name;
        if (str == null) {
            str = str2;
        }
        if (is_none(str)) {
            this.enabled_name = this.none_name;
        } else if (get(str) != null) {
            this.enabled_name = str;
        } else {
            this.enabled_name = this.none_name;
        }
        if (str2 == null || !str2.equals(this.enabled_name)) {
            this.dirty = true;
        }
    }

    public int size() {
        return this.list.size();
    }

    public void forget_creds() {
        Iterator<Item> it = this.list.values().iterator();
        while (it.hasNext()) {
            forget_creds(it.next());
        }
    }

    private void forget_creds(Item item) {
        if (item != null) {
            item.username = "";
            item.password = "";
            this.dirty = true;
        }
    }
}
