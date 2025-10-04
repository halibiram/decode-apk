package com.tknetwork.tunnel.adapter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.fbd.tunnel.R;
import com.panda912.muddy.ObfuscatedString;
import de.blinkt.openvpn.core.LogItem;
import de.blinkt.openvpn.core.TkLogStatus;
import defpackage.AbstractC0749x8313616e;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.Vector;

/* loaded from: classes3.dex */
public class LogsAdapter extends RecyclerView.Adapter<logViewHolder> implements TkLogStatus.LogListener, Handler.Callback, View.OnTouchListener {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int MAX_STORED_LOG_ENTRIES = 1000;
    private static final int MESSAGE_CLEARLOG = 1;
    private static final int MESSAGE_NEWLOG = 0;
    private static final int MESSAGE_NEWLOGLEVEL = 3;
    private static final int MESSAGE_NEWTS = 2;
    public static final int TIME_FORMAT_ISO = 2;
    public static final int TIME_FORMAT_NONE = 0;
    public static final int TIME_FORMAT_SHORT = 1;
    private OnItemClickListener itemClickListener;
    private Context mContext;
    private Handler mHandler;
    private LinearLayoutManager mLinearLayoutManager;
    private Vector<LogItem> allEntries = new Vector<>();
    private Vector<LogItem> currentLevelEntries = new Vector<>();
    private Vector<RecyclerView.AdapterDataObserver> observers = new Vector<>();
    private int mTimeFormat = -100;
    private int mLogLevel = 3;
    private boolean mLockAutoScroll = false;

    /* loaded from: classes3.dex */
    public interface OnItemClickListener {
        void onItemClick(View view, int i, String str);

        void onItemLongClick(View view, int i, String str);
    }

    /* loaded from: classes3.dex */
    public class logViewHolder extends RecyclerView.ViewHolder {
        TextView textLog;

        public logViewHolder(View view) {
            super(view);
            this.textLog = (TextView) view.findViewById(R.id.textLog);
        }
    }

    public LogsAdapter(LinearLayoutManager linearLayoutManager, Context context) {
        this.mContext = context;
        this.mLinearLayoutManager = linearLayoutManager;
        initLogBuffer();
        if (this.mHandler == null) {
            this.mHandler = new Handler(this);
        }
        TkLogStatus.addLogListener(this);
    }

    private boolean addLogMessage(LogItem logItem) {
        this.allEntries.add(logItem);
        if (this.allEntries.size() > 1000) {
            Vector<LogItem> vector = this.allEntries;
            this.allEntries = new Vector<>(this.allEntries.size());
            for (int i = 50; i < vector.size(); i++) {
                this.allEntries.add(vector.elementAt(i));
            }
            initCurrentMessages();
            return true;
        }
        if (logItem.getLogLevel().getInt() <= this.mLogLevel) {
            this.currentLevelEntries.add(logItem);
            return true;
        }
        return false;
    }

    private String getTime(LogItem logItem, int i) {
        DateFormat timeFormat;
        if (i != 0) {
            Date date = new Date(logItem.getLogtime());
            if (i == 2) {
                timeFormat = new SimpleDateFormat(new ObfuscatedString(new long[]{-3129862391824983159L, 3563964547449032017L, 6708534726421626290L, 4185511840307097188L}).toString(), Locale.getDefault());
            } else if (i == 1) {
                timeFormat = new SimpleDateFormat(new ObfuscatedString(new long[]{-3084452163742988534L, -970205172792296026L}).toString());
            } else {
                timeFormat = android.text.format.DateFormat.getTimeFormat(this.mContext);
            }
            return timeFormat.format(date);
        }
        return new ObfuscatedString(new long[]{6510540891091453239L}).toString();
    }

    private void initCurrentMessages() {
        this.currentLevelEntries.clear();
        Iterator<LogItem> it = this.allEntries.iterator();
        while (it.hasNext()) {
            LogItem next = it.next();
            if (next.getLogLevel().getInt() <= this.mLogLevel) {
                this.currentLevelEntries.add(next);
            }
        }
    }

    private void initLogBuffer() {
        this.allEntries.clear();
        Collections.addAll(this.allEntries, TkLogStatus.getlogbuffer());
        initCurrentMessages();
    }

    public LogItem getItem(int i) {
        return this.currentLevelEntries.get(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.currentLevelEntries.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return this.currentLevelEntries.get(i).hashCode();
    }

    public String getLogStr() {
        String obfuscatedString = new ObfuscatedString(new long[]{4831762704177763703L}).toString();
        Iterator<LogItem> it = this.allEntries.iterator();
        while (it.hasNext()) {
            LogItem next = it.next();
            StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(obfuscatedString);
            m3341xc20437a5.append(getTime(next, 2));
            m3341xc20437a5.append(next.getString(this.mContext));
            m3341xc20437a5.append('\n');
            obfuscatedString = m3341xc20437a5.toString();
        }
        return obfuscatedString;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            if (addLogMessage((LogItem) message.getData().getParcelable(new ObfuscatedString(new long[]{-2179854308812040911L, -5586439590094480048L, 6745809765472546509L}).toString()))) {
                Iterator<RecyclerView.AdapterDataObserver> it = this.observers.iterator();
                while (it.hasNext()) {
                    it.next().onChanged();
                }
                if (!this.mLockAutoScroll) {
                    scrollToLastPosition();
                }
            }
        } else if (i == 1) {
            Iterator<RecyclerView.AdapterDataObserver> it2 = this.observers.iterator();
            while (it2.hasNext()) {
                it2.next().onChanged();
            }
            initLogBuffer();
        } else if (i == 2) {
            Iterator<RecyclerView.AdapterDataObserver> it3 = this.observers.iterator();
            while (it3.hasNext()) {
                it3.next().onChanged();
            }
        } else if (i == 3) {
            initCurrentMessages();
            Iterator<RecyclerView.AdapterDataObserver> it4 = this.observers.iterator();
            while (it4.hasNext()) {
                it4.next().onChanged();
            }
        }
        return true;
    }

    public boolean isEmpty() {
        return this.currentLevelEntries.isEmpty();
    }

    @Override // de.blinkt.openvpn.core.TkLogStatus.LogListener
    public void newLog(LogItem logItem) {
        Message obtain = Message.obtain();
        obtain.what = 0;
        Bundle bundle = new Bundle();
        bundle.putParcelable(new ObfuscatedString(new long[]{7652607390917356058L, -8862208921681173884L, 5879055097249866753L}).toString(), logItem);
        obtain.setData(bundle);
        this.mHandler.sendMessage(obtain);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
    }

    @Override // de.blinkt.openvpn.core.TkLogStatus.LogListener
    public void onClear() {
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void registerAdapterDataObserver(RecyclerView.AdapterDataObserver adapterDataObserver) {
        super.registerAdapterDataObserver(adapterDataObserver);
        this.observers.add(adapterDataObserver);
    }

    public void scrollToLastPosition() {
        this.mLinearLayoutManager.scrollToPosition(r0.getItemCount() - 1);
    }

    public void setLogLevel(int i) {
        this.mLogLevel = i;
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.itemClickListener = onItemClickListener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void unregisterAdapterDataObserver(RecyclerView.AdapterDataObserver adapterDataObserver) {
        super.unregisterAdapterDataObserver(adapterDataObserver);
        this.observers.remove(adapterDataObserver);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(logViewHolder logviewholder, @SuppressLint({"RecyclerView"}) final int i) {
        try {
            LogItem logItem = this.currentLevelEntries.get(i);
            String string = logItem.getString(this.mContext);
            String time = getTime(logItem, this.mTimeFormat);
            StringBuilder sb = new StringBuilder();
            sb.append(!time.isEmpty() ? String.format(new ObfuscatedString(new long[]{-5022851217898143199L, 2852520500483348590L}).toString(), time) : new ObfuscatedString(new long[]{-1665290395360303777L}).toString());
            sb.append(string);
            final String sb2 = sb.toString();
            logviewholder.textLog.setText(Html.fromHtml(sb2));
            logviewholder.textLog.setOnClickListener(new View.OnClickListener() { // from class: com.tknetwork.tunnel.adapter.LogsAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (LogsAdapter.this.itemClickListener != null) {
                        LogsAdapter.this.itemClickListener.onItemClick(view, i, sb2);
                    }
                }
            });
            logviewholder.textLog.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.tknetwork.tunnel.adapter.LogsAdapter.2
                @Override // android.view.View.OnLongClickListener
                public boolean onLongClick(View view) {
                    if (LogsAdapter.this.itemClickListener != null) {
                        LogsAdapter.this.itemClickListener.onItemLongClick(view, i, sb2);
                        return true;
                    }
                    return true;
                }
            });
        } catch (Exception unused) {
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public logViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_list_log, viewGroup, false);
        inflate.setOnTouchListener(this);
        return new logViewHolder(inflate);
    }
}
