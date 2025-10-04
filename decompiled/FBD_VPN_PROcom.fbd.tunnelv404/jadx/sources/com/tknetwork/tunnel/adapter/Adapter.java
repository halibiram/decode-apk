package com.tknetwork.tunnel.adapter;

import android.app.Activity;
import android.content.Context;
import android.os.Parcelable;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewpager.widget.PagerAdapter;
import com.fbd.tunnel.R;
import com.tknetwork.tunnel.service.c_05;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class Adapter {

    /* loaded from: classes3.dex */
    public static class LogAdapter extends ArrayAdapter<c_05.LogMsg> {
        public LogAdapter(Context context, ArrayList<c_05.LogMsg> arrayList) {
            super(context, R.layout.log_item, arrayList);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        @NonNull
        public View getView(int i, View view, @NonNull ViewGroup viewGroup) {
            View inflate = LayoutInflater.from(getContext()).inflate(R.layout.log_item, viewGroup, false);
            TextView textView = (TextView) inflate.findViewById(R.id.log_item);
            c_05.LogMsg logMsg = (c_05.LogMsg) getItem(i);
            if (logMsg == null) {
                return inflate;
            }
            textView.setText(Html.fromHtml(logMsg.line));
            return inflate;
        }
    }

    /* loaded from: classes3.dex */
    public static class MyPageAdapter extends PagerAdapter {
        private final Activity activity;
        private int[] tabids;
        private String[] titles;

        public MyPageAdapter(Activity activity) {
            this.activity = activity;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return this.tabids.length;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        @Nullable
        public CharSequence getPageTitle(int i) {
            return this.titles[i];
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        @NonNull
        public Object instantiateItem(@NonNull View view, int i) {
            return this.activity.findViewById(this.tabids[i]);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(@NonNull View view, @NonNull Object obj) {
            return view == obj;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        @Nullable
        public Parcelable saveState() {
            return null;
        }

        public void setPageTitles(String... strArr) {
            this.titles = strArr;
        }

        public void setTabIds(int... iArr) {
            this.tabids = iArr;
        }
    }
}
