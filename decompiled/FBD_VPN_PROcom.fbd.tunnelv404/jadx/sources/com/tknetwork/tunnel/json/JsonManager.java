package com.tknetwork.tunnel.json;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.AsyncTask;
import android.os.Build;
import com.panda912.muddy.ObfuscatedString;
import com.tknetwork.tunnel.activities.ActivityUi;
import com.tknetwork.tunnel.utils.c_12;
import j$.util.Objects;
import java.io.File;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.util.concurrent.TimeUnit;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.ResponseBody;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class JsonManager {

    /* loaded from: classes3.dex */
    public static class ExpiryUpdate extends AsyncTask<String, String, String> {
        private ExpireDateListener listener;
        private String url;

        /* loaded from: classes3.dex */
        public interface ExpireDateListener {
            void onAuthFailed(String str);

            void onDeviceNotMatch(String str);

            void onError(String str);

            void onExpireDate(String str);
        }

        public ExpiryUpdate(ActivityUi activityUi) {
        }

        public void setExpireDateListener(ExpireDateListener expireDateListener) {
            this.listener = expireDateListener;
        }

        public void setURL(String str) {
            this.url = str;
        }

        public void start() {
            try {
                execute(this.url);
            } catch (Exception unused) {
            }
        }

        @Override // android.os.AsyncTask
        public String doInBackground(String[] strArr) {
            try {
                String str = strArr[0];
                OkHttpClient.Builder builder = new OkHttpClient.Builder();
                TimeUnit timeUnit = TimeUnit.SECONDS;
                builder.connectTimeout(60L, timeUnit);
                builder.readTimeout(60L, timeUnit);
                builder.writeTimeout(60L, timeUnit);
                ResponseBody body = builder.build().newCall(new Request.Builder().url(str).build()).execute().body();
                Objects.requireNonNull(body);
                return body.string();
            } catch (Exception e) {
                e.printStackTrace();
                return new ObfuscatedString(new long[]{-5887222305434599303L, 1592279407918736949L}).toString() + e.getMessage();
            }
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(String str) {
            if (str.startsWith(new ObfuscatedString(new long[]{700247197459002721L, 414268814689910150L}).toString())) {
                this.listener.onError(str);
            } else if (str.startsWith(new ObfuscatedString(new long[]{-3310374102567356486L, 1644627817619400425L}).toString())) {
                this.listener.onError(str);
            } else {
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    String string = jSONObject.getString(new ObfuscatedString(new long[]{-3780472059157677809L, 8263311220990012136L}).toString());
                    if (jSONObject.get(new ObfuscatedString(new long[]{5646581886519967208L, 7675544057094990317L, 6044925216731567699L}).toString()) instanceof Boolean) {
                        if (jSONObject.getBoolean(new ObfuscatedString(new long[]{-2588804850744662366L, -6503374751905605032L, 2420877931020124369L}).toString())) {
                            this.listener.onExpireDate(jSONObject.getString(new ObfuscatedString(new long[]{6137603613150195197L, 6288306240606429201L}).toString()));
                        } else {
                            this.listener.onDeviceNotMatch(new ObfuscatedString(new long[]{2703906253642429761L, 8040971748611546001L, 5795228360465074007L, -2350341714146967031L, -6507341754177930293L, -3799786968503662981L}).toString());
                        }
                    } else {
                        String string2 = jSONObject.getString(new ObfuscatedString(new long[]{-2647538967548446219L, -1138396728367949582L, 9186559875978269511L}).toString());
                        if (string.equals(new ObfuscatedString(new long[]{2312256633041537269L, -5708805035366261288L}).toString()) && string2.equals(new ObfuscatedString(new long[]{5627294981011263370L, 8672755226398830695L}).toString())) {
                            this.listener.onAuthFailed(new ObfuscatedString(new long[]{-1392640280972619620L, 1542517420606049439L, 4401073648779826425L, 2904315326039574959L}).toString());
                        }
                    }
                } catch (Exception e) {
                    this.listener.onError(new ObfuscatedString(new long[]{-3660080523348739887L, -2810355505038841116L, -168465214831851725L}).toString() + e.getMessage());
                }
            }
            super.onPostExecute((ExpiryUpdate) str);
        }
    }

    /* loaded from: classes3.dex */
    public static class ServerUpdate extends AsyncTask<String, String, String> {
        static final /* synthetic */ boolean $assertionsDisabled = false;

        @SuppressLint({"StaticFieldLeak"})
        private final Context context;
        private OnUpdateListener listener;
        private String url;

        /* loaded from: classes3.dex */
        public interface OnUpdateListener {
            void onNoUpdateAvailable(String str);

            void onShowUpdate(String str, String str2);

            void onUpdateError(String str);
        }

        public ServerUpdate(Context context) {
            this.context = context;
        }

        private boolean versionCompare(String str, String str2) {
            String[] split = str.split(new ObfuscatedString(new long[]{6781677465487033453L, -6646566294292886356L}).toString());
            String[] split2 = str2.split(new ObfuscatedString(new long[]{4102227168085535061L, 3309769603231988397L}).toString());
            int i = 0;
            while (i < split.length && i < split2.length && split[i].equals(split2[i])) {
                i++;
            }
            if (i < split.length && i < split2.length) {
                if (Integer.signum(Integer.valueOf(split[i]).compareTo(Integer.valueOf(split2[i]))) > 0) {
                    return true;
                }
                return false;
            }
            if (Integer.signum(split.length - split2.length) > 0) {
                return true;
            }
            return false;
        }

        public void setURL(String str) {
            this.url = str;
        }

        public void setUpdateListener(OnUpdateListener onUpdateListener) {
            this.listener = onUpdateListener;
        }

        public void start() {
            try {
                execute(this.url);
            } catch (Exception unused) {
            }
        }

        @Override // android.os.AsyncTask
        public String doInBackground(String[] strArr) {
            try {
                String str = strArr[0];
                OkHttpClient.Builder builder = new OkHttpClient.Builder();
                TimeUnit timeUnit = TimeUnit.SECONDS;
                builder.connectTimeout(60L, timeUnit);
                builder.readTimeout(60L, timeUnit);
                builder.writeTimeout(60L, timeUnit);
                ResponseBody body = builder.build().newCall(new Request.Builder().url(str).build()).execute().body();
                Objects.requireNonNull(body);
                return body.string();
            } catch (Exception e) {
                e.printStackTrace();
                return new ObfuscatedString(new long[]{-174983223151019407L, -1928586045845648714L}).toString() + e.getMessage();
            }
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(String str) {
            String obfuscatedString;
            OutputStream outputStream;
            Path path;
            if (str.startsWith(new ObfuscatedString(new long[]{3151582247179775350L, 7167682796708879261L}).toString())) {
                this.listener.onUpdateError(str);
            } else {
                try {
                    File file = new File(this.context.getFilesDir(), new ObfuscatedString(new long[]{2948725715434028456L, 3543591494139779809L, 2827366591553207568L}).toString());
                    String d_01 = c_12.Parser.d_01(str);
                    JSONObject jSONObject = new JSONObject(d_01);
                    String string = jSONObject.getString(new ObfuscatedString(new long[]{7812237585933380480L, 7911092307964515990L}).toString());
                    String string2 = jSONObject.getString(new ObfuscatedString(new long[]{-7120410053444939921L, -8592047435306060286L}).toString());
                    if (file.exists()) {
                        String readFile = c_12.readFile(this.context, file);
                        Objects.requireNonNull(readFile);
                        obfuscatedString = new JSONObject(readFile).getString(new ObfuscatedString(new long[]{8972028033108099608L, 7037139284491356388L}).toString());
                    } else {
                        obfuscatedString = new ObfuscatedString(new long[]{-9158359025377164098L, -7716772695181011229L}).toString();
                    }
                    if (versionCompare(string, obfuscatedString)) {
                        if (Build.VERSION.SDK_INT >= 26) {
                            path = file.toPath();
                            outputStream = Files.newOutputStream(path, new OpenOption[0]);
                        } else {
                            outputStream = null;
                        }
                        if (outputStream != null) {
                            outputStream.write(d_01.getBytes());
                        }
                        outputStream.flush();
                        outputStream.close();
                        this.listener.onShowUpdate(string, string2);
                    } else {
                        this.listener.onNoUpdateAvailable(obfuscatedString);
                    }
                } catch (Exception e) {
                    this.listener.onUpdateError(e.getMessage());
                }
            }
            super.onPostExecute((ServerUpdate) str);
        }
    }
}
