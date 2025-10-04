package com.airbnb.lottie.network;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.airbnb.lottie.utils.Logger;
import com.panda912.muddy.ObfuscatedString;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class DefaultLottieFetchResult implements LottieFetchResult {

    @NonNull
    private final HttpURLConnection connection;

    public DefaultLottieFetchResult(@NonNull HttpURLConnection httpURLConnection) {
        this.connection = httpURLConnection;
    }

    private String getErrorFromConnection(HttpURLConnection httpURLConnection) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
        StringBuilder sb = new StringBuilder();
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    sb.append(readLine);
                    sb.append('\n');
                } else {
                    try {
                        break;
                    } catch (Exception unused) {
                    }
                }
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Exception unused2) {
                }
                throw th;
            }
        }
        bufferedReader.close();
        return sb.toString();
    }

    @Override // com.airbnb.lottie.network.LottieFetchResult
    @NonNull
    public InputStream bodyByteStream() {
        return this.connection.getInputStream();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.connection.disconnect();
    }

    @Override // com.airbnb.lottie.network.LottieFetchResult
    @Nullable
    public String contentType() {
        return this.connection.getContentType();
    }

    @Override // com.airbnb.lottie.network.LottieFetchResult
    @Nullable
    public String error() {
        try {
            if (isSuccessful()) {
                return null;
            }
            return new ObfuscatedString(new long[]{6479103694820175237L, -6809941715014533678L, -427290392442110843L}).toString() + this.connection.getURL() + new ObfuscatedString(new long[]{8459085393484982061L, -3700575898599721435L, -4000959754524053894L}).toString() + this.connection.getResponseCode() + new ObfuscatedString(new long[]{1334155174607511056L, -95244429827483755L}).toString() + getErrorFromConnection(this.connection);
        } catch (IOException e) {
            Logger.warning(new ObfuscatedString(new long[]{-6230109675568596348L, 2250514728611711210L, -2123683248605904751L, 4987874952671029611L}).toString(), e);
            return e.getMessage();
        }
    }

    @Override // com.airbnb.lottie.network.LottieFetchResult
    public boolean isSuccessful() {
        try {
            if (this.connection.getResponseCode() / 100 != 2) {
                return false;
            }
            return true;
        } catch (IOException unused) {
            return false;
        }
    }
}
