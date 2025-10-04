package com.tknetwork.tunnel.fragment;

import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.fbd.tunnel.R;
import com.panda912.muddy.ObfuscatedString;
import com.tknetwork.tunnel.adapter.LogsAdapter;

/* loaded from: classes3.dex */
public class LogsFragment extends Fragment implements LogsAdapter.OnItemClickListener {
    private static final String ARG_PARAM1 = new ObfuscatedString(new long[]{-4463474068413852617L, -1688546065596645800L}).toString();
    private static final String ARG_PARAM2 = new ObfuscatedString(new long[]{-428030508807074136L, 2372778850860871188L}).toString();
    private RecyclerView logListView;
    private LogsAdapter mAdapter;
    private Handler mHandler;
    private String mParam1;
    private String mParam2;
    private View mView;

    public LogsFragment() {
        setHasOptionsMenu(true);
        this.mHandler = new Handler();
    }

    public static LogsFragment newInstance(String str, String str2) {
        LogsFragment logsFragment = new LogsFragment();
        Bundle bundle = new Bundle();
        bundle.putString(new ObfuscatedString(new long[]{-4509574519712809955L, 2568099564098579582L}).toString(), str);
        bundle.putString(new ObfuscatedString(new long[]{-8661081514951287321L, 5875471340353424330L}).toString(), str2);
        logsFragment.setArguments(bundle);
        return logsFragment;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.mParam1 = getArguments().getString(new ObfuscatedString(new long[]{3893231816976112294L, -2433383390059693195L}).toString());
            this.mParam2 = getArguments().getString(new ObfuscatedString(new long[]{871436581055145859L, 2618790991302347066L}).toString());
        }
        setHasOptionsMenu(true);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.mView = layoutInflater.inflate(R.layout.fragment_logs, viewGroup, false);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getActivity());
        LogsAdapter logsAdapter = new LogsAdapter(linearLayoutManager, getActivity());
        this.mAdapter = logsAdapter;
        logsAdapter.setOnItemClickListener(this);
        RecyclerView recyclerView = (RecyclerView) this.mView.findViewById(R.id.recyclerDrawerView);
        this.logListView = recyclerView;
        recyclerView.setAdapter(this.mAdapter);
        this.logListView.setLayoutManager(linearLayoutManager);
        this.mAdapter.scrollToLastPosition();
        return this.mView;
    }

    @Override // com.tknetwork.tunnel.adapter.LogsAdapter.OnItemClickListener
    public void onItemClick(View view, int i, String str) {
    }

    @Override // com.tknetwork.tunnel.adapter.LogsAdapter.OnItemClickListener
    public void onItemLongClick(View view, int i, String str) {
    }
}
