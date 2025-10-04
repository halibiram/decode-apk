package com.tknetwork.tunnel.activities;

import android.os.Bundle;
import android.text.ClipboardManager;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.fbd.tunnel.R;
import com.panda912.muddy.ObfuscatedString;
import com.tknetwork.tunnel.adapter.Adapter;
import com.tknetwork.tunnel.service.c_05;
import defpackage.AbstractC0749x8313616e;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class LogActivity extends MainBaseActivity implements AdapterView.OnItemLongClickListener {
    private Adapter.LogAdapter adapter;
    private ArrayList<c_05.LogMsg> listLog;
    private ListView logView;

    private void copy(String str) {
        ((ClipboardManager) getSystemService(new ObfuscatedString(new long[]{7161650265615054672L, -6858118393987616330L, 2740215895536187173L}).toString())).setText(str);
    }

    private void deleteLogs() {
        if (this.listLog.size() > 0) {
            this.listLog.clear();
            ArrayDeque<c_05.LogMsg> log_history = log_history();
            if (log_history != null) {
                log_history.clear();
            }
            this.adapter.notifyDataSetChanged();
            showToast(new ObfuscatedString(new long[]{-6851418601074246817L, 8877025273453800755L, 2721826534256785848L}).toString());
        }
    }

    public String getFullLog() {
        StringBuilder sb = new StringBuilder();
        if (this.listLog.size() > 0) {
            Iterator<c_05.LogMsg> it = this.listLog.iterator();
            while (it.hasNext()) {
                sb.append(it.next().line + new ObfuscatedString(new long[]{3221806340365560603L, -5291995548459672783L}).toString());
            }
        }
        return sb.toString();
    }

    @Override // com.tknetwork.tunnel.activities.MainBaseActivity, com.tknetwork.tunnel.service.c_05.EventReceiver
    public void log(c_05.LogMsg logMsg) {
        this.listLog.add(logMsg);
        this.adapter.notifyDataSetChanged();
        this.logView.post(new Runnable() { // from class: com.tknetwork.tunnel.activities.LogActivity.1
            @Override // java.lang.Runnable
            public void run() {
                LogActivity.this.logView.smoothScrollToPosition(LogActivity.this.listLog.size());
            }
        });
        super.log(logMsg);
    }

    @Override // com.tknetwork.tunnel.activities.MainBaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.log_activity);
        this.logView = (ListView) findViewById(R.id.log_list);
        this.listLog = new ArrayList<>();
        Adapter.LogAdapter logAdapter = new Adapter.LogAdapter(this, this.listLog);
        this.adapter = logAdapter;
        this.logView.setAdapter((ListAdapter) logAdapter);
        this.logView.setOnItemLongClickListener(this);
        doBindService();
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.log_menu, menu);
        return true;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        doUnbindService();
        super.onDestroy();
    }

    @Override // android.widget.AdapterView.OnItemLongClickListener
    public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
        if (this.listLog.size() > 0) {
            c_05.LogMsg logMsg = this.listLog.get(i);
            StringBuilder sb = new StringBuilder();
            sb.append(logMsg.line);
            copy(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-4729688116224657119L, 5978849737190890563L}), sb));
            showToast(new ObfuscatedString(new long[]{6081819263538737313L, -6759991076092484457L, 5050413855804261955L}).toString());
            return true;
        }
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.tknetwork.tunnel.activities.MainBaseActivity
    public void post_bind() {
        ArrayDeque<c_05.LogMsg> log_history = log_history();
        if (log_history != null) {
            Iterator<c_05.LogMsg> it = log_history.iterator();
            while (it.hasNext()) {
                this.listLog.add(it.next());
                this.adapter.notifyDataSetChanged();
            }
        }
        super.post_bind();
    }
}
