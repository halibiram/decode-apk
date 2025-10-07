package com.tknetwork.tunnel.thread;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.List;

/* loaded from: classes3.dex */
public class StreamGobbler extends Thread {
    private OnLineListener listener;
    private final BufferedReader reader;
    private List<String> writer;

    /* loaded from: classes3.dex */
    public interface OnLineListener {
        void onLine(String str);
    }

    public StreamGobbler(InputStream inputStream, List<String> list) {
        this.reader = new BufferedReader(new InputStreamReader(inputStream));
        this.writer = list;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        while (true) {
            try {
                String readLine = this.reader.readLine();
                if (readLine != null) {
                    List<String> list = this.writer;
                    if (list != null) {
                        list.add(readLine);
                    }
                    OnLineListener onLineListener = this.listener;
                    if (onLineListener != null) {
                        onLineListener.onLine(readLine);
                    }
                }
            } catch (IOException unused) {
            }
            try {
                this.reader.close();
                return;
            } catch (IOException unused2) {
                return;
            }
        }
    }

    public StreamGobbler(InputStream inputStream, OnLineListener onLineListener) {
        this.reader = new BufferedReader(new InputStreamReader(inputStream));
        this.listener = onLineListener;
    }
}
