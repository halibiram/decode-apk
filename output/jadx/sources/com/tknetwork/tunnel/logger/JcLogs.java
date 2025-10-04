package com.tknetwork.tunnel.logger;

import android.annotation.SuppressLint;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.DataSetObserver;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.widget.Toolbar;
import androidx.preference.PreferenceManager;
import com.fbd.tunnel.R;
import com.panda912.muddy.ObfuscatedString;
import com.tknetwork.tunnel.activities.MainBaseActivity;
import com.tknetwork.tunnel.logger.JcLogs;
import com.tknetwork.tunnel.service.c_05;
import de.blinkt.openvpn.core.LogItem;
import de.blinkt.openvpn.core.TkLogStatus;
import defpackage.AbstractC0749x8313616e;
import defpackage.ViewOnClickListenerC0899xca18fbd;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.Vector;

/* loaded from: classes3.dex */
public class JcLogs extends MainBaseActivity {
    private static final String LOGTIMEFORMAT = new ObfuscatedString(new long[]{146196334582380732L, 158864553329544004L, 6310758761860134429L}).toString();

    @SuppressLint({"StaticFieldLeak"})
    public static LogWindowListAdapter ladapter;
    private SharedPreferences.Editor editor;
    private SharedPreferences myPrefs;
    private Toolbar tb;

    /* loaded from: classes3.dex */
    public static class LogWindowListAdapter implements ListAdapter, TkLogStatus.LogListener, Handler.Callback {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private static final int MAX_STORED_LOG_ENTRIES = 1000;
        private static final int MESSAGE_CLEARLOG = 1;
        private static final int MESSAGE_NEWLOG = 0;
        private static final int MESSAGE_NEWLOGLEVEL = 3;
        private static final int MESSAGE_NEWTS = 2;
        public static final int TIME_FORMAT_ISO = 2;
        public static final int TIME_FORMAT_NONE = 0;
        public static final int TIME_FORMAT_SHORT = 1;
        private final Context mContext;
        private Handler mHandler;
        private Vector<LogItem> allEntries = new Vector<>();
        private final Vector<LogItem> currentLevelEntries = new Vector<>();
        private final Vector<DataSetObserver> observers = new Vector<>();
        private int mTimeFormat = 0;
        private final int mLogLevel = 3;

        public LogWindowListAdapter(Context context) {
            this.mContext = context;
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
            if (logItem.getVerbosityLevel() <= 3) {
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
                    timeFormat = new SimpleDateFormat(new ObfuscatedString(new long[]{-5416892382725035945L, -1428676284125898714L, -6824851755909064160L, -5171940845020887677L}).toString(), Locale.getDefault());
                } else {
                    timeFormat = android.text.format.DateFormat.getTimeFormat(this.mContext);
                }
                StringBuilder sb = new StringBuilder();
                sb.append(timeFormat.format(date));
                return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{669158962916222315L, -108996086349791596L}), sb);
            }
            return new ObfuscatedString(new long[]{-6920037846246135692L}).toString();
        }

        private void initCurrentMessages() {
            this.currentLevelEntries.clear();
            Iterator<LogItem> it = this.allEntries.iterator();
            while (it.hasNext()) {
                LogItem next = it.next();
                if (next.getVerbosityLevel() <= 3) {
                    this.currentLevelEntries.add(next);
                }
            }
        }

        private void initLogBuffer() {
            this.allEntries.clear();
            Collections.addAll(this.allEntries, TkLogStatus.getlogbuffer());
            initCurrentMessages();
        }

        @Override // android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return true;
        }

        public void clearLog() {
            TkLogStatus.clearLog();
            this.mHandler.sendEmptyMessage(1);
        }

        @Override // android.widget.Adapter
        public CharSequence[] getAutofillOptions() {
            return null;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.currentLevelEntries.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.currentLevelEntries.get(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return this.currentLevelEntries.get(i).hashCode();
        }

        @Override // android.widget.Adapter
        public int getItemViewType(int i) {
            return 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View inflate = LayoutInflater.from(this.mContext).inflate(R.layout.logs, viewGroup, false);
            LogItem logItem = this.currentLevelEntries.get(i);
            String string = logItem.getString(this.mContext);
            String time = getTime(logItem, this.mTimeFormat);
            TextView textView = (TextView) inflate.findViewById(R.id.msgText);
            TextView textView2 = (TextView) inflate.findViewById(R.id.Textime);
            textView.setTextSize(11.0f);
            textView2.setTextSize(11.0f);
            textView.setText(Html.fromHtml(string));
            textView2.setText(new ObfuscatedString(new long[]{-4297130592472486304L, 3913961948854964542L}).toString() + time + new ObfuscatedString(new long[]{-3380046215235995588L, 2250592431423899912L}).toString());
            return inflate;
        }

        @Override // android.widget.Adapter
        public int getViewTypeCount() {
            return 1;
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                if (addLogMessage((LogItem) message.getData().getParcelable(new ObfuscatedString(new long[]{943809224511742896L, 8121805059267165233L, -8524562774456205597L}).toString()))) {
                    Iterator<DataSetObserver> it = this.observers.iterator();
                    while (it.hasNext()) {
                        it.next().onChanged();
                    }
                }
            } else if (i == 1) {
                Iterator<DataSetObserver> it2 = this.observers.iterator();
                while (it2.hasNext()) {
                    it2.next().onInvalidated();
                }
                initLogBuffer();
            } else if (i == 2) {
                Iterator<DataSetObserver> it3 = this.observers.iterator();
                while (it3.hasNext()) {
                    it3.next().onInvalidated();
                }
            } else if (i == 3) {
                initCurrentMessages();
                Iterator<DataSetObserver> it4 = this.observers.iterator();
                while (it4.hasNext()) {
                    it4.next().onChanged();
                }
            }
            return true;
        }

        @Override // android.widget.Adapter
        public boolean hasStableIds() {
            return true;
        }

        @Override // android.widget.Adapter
        public boolean isEmpty() {
            return this.currentLevelEntries.isEmpty();
        }

        @Override // android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return true;
        }

        @Override // de.blinkt.openvpn.core.TkLogStatus.LogListener
        public void newLog(LogItem logItem) {
            Message obtain = Message.obtain();
            obtain.what = 0;
            Bundle bundle = new Bundle();
            bundle.putParcelable(new ObfuscatedString(new long[]{7475435549490422241L, 3648684536775942543L, 5247262367138435232L}).toString(), logItem);
            obtain.setData(bundle);
            this.mHandler.sendMessage(obtain);
        }

        @Override // de.blinkt.openvpn.core.TkLogStatus.LogListener
        public void onClear() {
        }

        @Override // android.widget.Adapter
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            this.observers.add(dataSetObserver);
        }

        @Override // android.widget.Adapter
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            this.observers.remove(dataSetObserver);
        }
    }

    public /* synthetic */ boolean lambda$onCreate$0(AdapterView adapterView, View view, int i, long j) {
        ((ClipboardManager) getSystemService(new ObfuscatedString(new long[]{-3144907987078464221L, 4998871259168643601L, -7745066632470975709L}).toString())).setPrimaryClip(ClipData.newPlainText(new ObfuscatedString(new long[]{-2855767621664181405L, -1131454882087895651L, 4990893213802062783L}).toString(), adapterView.getItemAtPosition(i).toString()));
        Toast.makeText(this, new ObfuscatedString(new long[]{-6540671658333430306L, 5371964583098753147L, -1887486766989033168L}).toString(), 1).show();
        return true;
    }

    public /* synthetic */ void lambda$onCreate$1(View view) {
        clear();
    }

    private void loadAppColors(int i) {
        setStatusBarColor(i);
        setNavBarColor(i);
        findViewById(R.id.toolbar).setBackgroundColor(i);
    }

    private void mail() {
        new ObfuscatedString(new long[]{39569596603009534L, 5769189964484907913L, 3599399728412234290L}).toString();
        startActivity(new Intent(new ObfuscatedString(new long[]{4617393576422685756L, 7217302351055448739L, -4742808734353123490L, 6385824600639130423L, 6289995259503568125L}).toString(), Uri.parse(String.format(new ObfuscatedString(new long[]{1770939343451724467L, 36527193057968422L, 2137402817427356490L, 7955782304775622859L, -5387679174410261096L, -5172333538797925630L, -6610798244820245494L}).toString(), new ObfuscatedString(new long[]{5289351566603977418L, 7628159350472283407L, -2486131066185987765L}).toString(), new ObfuscatedString(new long[]{7868673026326290796L, -2699950972981622338L, 4760006355365915365L}).toString()))));
    }

    public void clear() {
        ladapter.clearLog();
    }

    @Override // com.tknetwork.tunnel.activities.MainBaseActivity, com.tknetwork.tunnel.service.c_05.EventReceiver
    public void log(c_05.LogMsg logMsg) {
    }

    @Override // com.tknetwork.tunnel.activities.MainBaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    @SuppressLint({"MissingInflatedId"})
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.fragment_log);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        this.myPrefs = defaultSharedPreferences;
        this.editor = defaultSharedPreferences.edit();
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        this.tb = toolbar;
        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        LogWindowListAdapter logWindowListAdapter = new LogWindowListAdapter(this);
        ladapter = logWindowListAdapter;
        logWindowListAdapter.mTimeFormat = getPreferences(0).getInt(new ObfuscatedString(new long[]{8739683793350059958L, 2128124987875329659L, 2756354191890704028L}).toString(), 1);
        ListView listView = (ListView) findViewById(android.R.id.list);
        doBindService();
        listView.setAdapter((ListAdapter) ladapter);
        listView.setSelection(ladapter.getCount());
        listView.setOnItemLongClickListener(new AdapterView.OnItemLongClickListener() { // from class: 딁뒹땁땄디딐딜땋뎠딐딐듼땵딐둣뒉뎠뎬뎹돛뒨땭됫뒤뒈땋뎰듟땰돼뒙땮득땻둬땡뎸돝땄될딄땪뒋뒹딨뎰딜땃돷딄돠뒉땫돵땧돠땡뒘땫땔땭딃뒨돨돝땁땟땁딽딎될딨뒾뒈뒻딤디둠뒝드돨땹됐뎸뒵듻땔딽딐딜돝땧둬든돰듻따땬둬땫땥둡돛땻땟딤도딹뒈돷땵뒹뒝뎻듼땪뒉땟듽땣땵땟될두돠뎹뎻딽딄땍
            @Override // android.widget.AdapterView.OnItemLongClickListener
            public final boolean onItemLongClick(AdapterView adapterView, View view, int i, long j) {
                boolean lambda$onCreate$0;
                lambda$onCreate$0 = JcLogs.this.lambda$onCreate$0(adapterView, view, i, j);
                return lambda$onCreate$0;
            }
        });
        findViewById(R.id.clearLogs).setOnClickListener(new ViewOnClickListenerC0899xca18fbd(this, 0));
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.cleardata_menu, menu);
        return true;
    }

    @Override // android.app.Activity
    @SuppressLint({"NonConstantResourceId"})
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.id.menu_clear) {
            clear();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        loadAppColors(this.myPrefs.getInt(new ObfuscatedString(new long[]{87134098881081565L, -9170688986949577796L, 2633610070527247704L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{-3861474424799068073L, -3829457260076403831L}).toString())));
        super.onResume();
    }
}
