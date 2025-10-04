package com.tknetwork.tunnel.view;

import android.app.AlertDialog;
import android.app.ListActivity;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Environment;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import android.widget.TextView;
import com.fbd.tunnel.R;
import com.panda912.muddy.ObfuscatedString;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.TreeMap;

/* loaded from: classes3.dex */
public class FileDialog extends ListActivity {
    public static final int MODE_CREATE = 0;
    public static final int MODE_OPEN = 1;
    private InputMethodManager inputManager;
    private LinearLayout layoutCreate;
    private LinearLayout layoutSelect;
    private EditText mFileName;
    private ArrayList<HashMap<String, Object>> mList;
    private TextView myPath;
    private TextView myPrompt;
    private String parentPath;
    private Button selectButton;
    private File selectedFile;
    public static final String CAN_SELECT_DIR = new ObfuscatedString(new long[]{6948235067610146386L, 5661803331812707397L, 7564444032431639859L}).toString();
    public static final String FORMAT_FILTER = new ObfuscatedString(new long[]{4801191144541504262L, -282908025593156094L, 5987138827711178799L}).toString();
    private static final String ITEM_IMAGE = new ObfuscatedString(new long[]{-4295649627231572311L, -674231036409565960L}).toString();
    private static final String ITEM_KEY = new ObfuscatedString(new long[]{-5017466407706067759L, 3435770732933211454L}).toString();
    public static final String OPTION_CURRENT_PATH_IN_TITLEBAR = new ObfuscatedString(new long[]{1398172156352717283L, 5471826617316048785L, -6567030629576108359L, 1264756997786557020L, 5216125664137055148L}).toString();
    public static final String OPTION_ONE_CLICK_SELECT = new ObfuscatedString(new long[]{7211431954696832220L, 4370486903557473755L, 273594530174770184L, -1750781853423046143L}).toString();
    public static final String OPTION_PROMPT = new ObfuscatedString(new long[]{-4841302978531996671L, 6763785773648692856L, -4072880087478813085L}).toString();
    public static final String RESULT_PATH = new ObfuscatedString(new long[]{4594881480501837685L, -7680557110896431440L, -2442476180192461939L}).toString();
    private static final String ROOT = new ObfuscatedString(new long[]{-1000087632421654632L, -7167090422336675400L}).toString();
    public static final String SELECTION_MODE = new ObfuscatedString(new long[]{-8994574953613349669L, -5537548220266104725L, -6595497960269268239L}).toString();
    public static final String START_PATH = new ObfuscatedString(new long[]{-6839369935816943806L, -7921193293376390562L, 5220811694446402710L}).toString();
    private static final String EXT_STORAGE = Environment.getExternalStorageDirectory().getAbsolutePath();
    private boolean canSelectDir = false;
    private String currentPath = new ObfuscatedString(new long[]{5155948713182892415L, -7953496867427239748L}).toString();
    private String[] formatFilter = null;
    private final HashMap<String, Integer> lastPositions = new HashMap<>();
    private boolean m_bOneClickSelect = false;
    private boolean m_bTitlebarFolder = false;
    private List<String> path = null;
    private int selectionMode = 0;

    private void addItem(String str, int i) {
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put(new ObfuscatedString(new long[]{243743916598131888L, 1370117702263823319L}).toString(), str);
        hashMap.put(new ObfuscatedString(new long[]{8330167436518518522L, 6899927574480313260L}).toString(), Integer.valueOf(i));
        this.mList.add(hashMap);
    }

    private void getDir(String str) {
        boolean z;
        if (str.length() < this.currentPath.length()) {
            z = true;
        } else {
            z = false;
        }
        Integer num = this.lastPositions.get(this.parentPath);
        getDirImpl(str);
        if (num != null && z) {
            getListView().setSelection(num.intValue());
        }
    }

    private void getDirImpl(String str) {
        this.currentPath = str;
        ArrayList arrayList = new ArrayList();
        this.path = new ArrayList();
        this.mList = new ArrayList<>();
        File file = new File(this.currentPath);
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            this.currentPath = EXT_STORAGE;
            file = new File(this.currentPath);
            listFiles = file.listFiles();
        }
        showLocation(R.string.file_dialog_location, this.currentPath);
        String str2 = this.currentPath;
        String str3 = EXT_STORAGE;
        if (!str2.equals(str3)) {
            arrayList.add(new ObfuscatedString(new long[]{3105571856480591308L, -4758324050858393390L, -9072992646195601763L}).toString());
            addItem(new ObfuscatedString(new long[]{-2250671078948289918L, 1557241668104846561L, -5243295374270740814L}).toString(), R.drawable.file_dialog_folder);
            this.path.add(str3);
        }
        if (!this.currentPath.equals(new ObfuscatedString(new long[]{7158887121457548628L, -1019432604718490543L}).toString())) {
            arrayList.add(new ObfuscatedString(new long[]{-603168511641743544L, 8368953818263370930L}).toString());
            addItem(new ObfuscatedString(new long[]{6546420735879300404L, 3358550921027571794L}).toString(), R.drawable.file_dialog_folder);
            this.path.add(file.getParent());
            this.parentPath = file.getParent();
        }
        TreeMap treeMap = new TreeMap();
        TreeMap treeMap2 = new TreeMap();
        TreeMap treeMap3 = new TreeMap();
        TreeMap treeMap4 = new TreeMap();
        for (File file2 : listFiles) {
            if (file2.isDirectory()) {
                String name = file2.getName();
                treeMap.put(name, name);
                treeMap2.put(name, file2.getPath());
            } else {
                String name2 = file2.getName();
                String lowerCase = name2.toLowerCase();
                if (this.formatFilter != null) {
                    int i = 0;
                    while (true) {
                        String[] strArr = this.formatFilter;
                        if (i >= strArr.length) {
                            break;
                        }
                        if (lowerCase.endsWith(strArr[i].toLowerCase())) {
                            treeMap3.put(name2, name2);
                            treeMap4.put(name2, file2.getPath());
                            break;
                        }
                        i++;
                    }
                } else {
                    treeMap3.put(name2, name2);
                    treeMap4.put(name2, file2.getPath());
                }
            }
        }
        arrayList.addAll(treeMap.tailMap(new ObfuscatedString(new long[]{5036093293411829089L}).toString()).values());
        arrayList.addAll(treeMap3.tailMap(new ObfuscatedString(new long[]{-4258477559361536470L}).toString()).values());
        this.path.addAll(treeMap2.tailMap(new ObfuscatedString(new long[]{6805398772180226601L}).toString()).values());
        this.path.addAll(treeMap4.tailMap(new ObfuscatedString(new long[]{-4747885433373405034L}).toString()).values());
        SimpleAdapter simpleAdapter = new SimpleAdapter(this, this.mList, R.layout.file_dialog_row, new String[]{new ObfuscatedString(new long[]{-5775180902890960503L, -7495666868378509955L}).toString(), new ObfuscatedString(new long[]{-263743910078240445L, -7994795451273726502L}).toString()}, new int[]{R.id.fdrowtext, R.id.fdrowimage});
        Iterator it = treeMap.tailMap(new ObfuscatedString(new long[]{-2524812386791720551L}).toString()).values().iterator();
        while (it.hasNext()) {
            addItem((String) it.next(), R.drawable.file_dialog_folder);
        }
        Iterator it2 = treeMap3.tailMap(new ObfuscatedString(new long[]{6756208663680062207L}).toString()).values().iterator();
        while (it2.hasNext()) {
            addItem((String) it2.next(), R.drawable.file_dialog_file);
        }
        simpleAdapter.notifyDataSetChanged();
        setListAdapter(simpleAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCreateVisible(View view) {
        this.layoutCreate.setVisibility(0);
        this.layoutSelect.setVisibility(8);
        this.inputManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
        this.selectButton.setEnabled(false);
    }

    private void setSelectVisible(View view) {
        if (!this.m_bOneClickSelect) {
            this.layoutCreate.setVisibility(8);
            this.layoutSelect.setVisibility(0);
            this.inputManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
            this.selectButton.setEnabled(false);
        }
    }

    private void showLocation(int i, String str) {
        if (this.m_bTitlebarFolder) {
            setTitle(str);
            return;
        }
        this.myPath.setText(((Object) getText(i)) + new ObfuscatedString(new long[]{-6382170720893339167L, -7223129829704143944L}).toString() + str);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setResult(0, getIntent());
        setContentView(R.layout.file_dialog_main);
        this.myPath = (TextView) findViewById(R.id.fdPath);
        this.myPrompt = (TextView) findViewById(R.id.fdPrompt);
        this.mFileName = (EditText) findViewById(R.id.fdEditTextFile);
        this.m_bOneClickSelect = getIntent().getBooleanExtra(new ObfuscatedString(new long[]{8780685547790992943L, 6403681210068668874L, -5359137339858124213L, -61422478421478345L}).toString(), this.m_bOneClickSelect);
        boolean booleanExtra = getIntent().getBooleanExtra(new ObfuscatedString(new long[]{-3368991579523398334L, 4068189590024667606L, -4708995495998828965L, -3828979042401024685L, 4877879048417517808L}).toString(), this.m_bTitlebarFolder);
        this.m_bTitlebarFolder = booleanExtra;
        if (booleanExtra) {
            this.myPath.setVisibility(8);
        }
        String stringExtra = getIntent().getStringExtra(new ObfuscatedString(new long[]{5020074034096602484L, 2527060541534408474L, -4688049650250256360L}).toString());
        if (stringExtra != null) {
            this.myPrompt.setText(stringExtra);
            this.myPrompt.setVisibility(0);
        } else {
            this.myPrompt.setVisibility(8);
        }
        this.inputManager = (InputMethodManager) getSystemService(new ObfuscatedString(new long[]{-8155327726056252325L, -3315145659305638731L, -7367156299591928361L}).toString());
        Button button = (Button) findViewById(R.id.fdButtonSelect);
        this.selectButton = button;
        button.setEnabled(false);
        this.selectButton.setOnClickListener(new View.OnClickListener() { // from class: com.tknetwork.tunnel.view.FileDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (FileDialog.this.selectedFile != null) {
                    FileDialog.this.getIntent().putExtra(new ObfuscatedString(new long[]{3742077821521242477L, -1005582864242058126L, 2820835857713908778L}).toString(), FileDialog.this.selectedFile.getPath());
                    FileDialog fileDialog = FileDialog.this;
                    fileDialog.setResult(-1, fileDialog.getIntent());
                    FileDialog.this.finish();
                }
            }
        });
        Button button2 = (Button) findViewById(R.id.fdButtonNew);
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.tknetwork.tunnel.view.FileDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FileDialog.this.setCreateVisible(view);
                FileDialog.this.mFileName.setText(new ObfuscatedString(new long[]{3600113454934823522L}).toString());
                FileDialog.this.mFileName.requestFocus();
            }
        });
        this.selectionMode = getIntent().getIntExtra(new ObfuscatedString(new long[]{5545945211379903834L, -2138779793179361142L, 7653417974821614879L}).toString(), 0);
        this.formatFilter = getIntent().getStringArrayExtra(new ObfuscatedString(new long[]{-3347026601281862743L, 5902791764479082196L, -6691361772139180921L}).toString());
        this.canSelectDir = getIntent().getBooleanExtra(new ObfuscatedString(new long[]{-7461737092721248325L, -307859521900593411L, -813197450419281499L}).toString(), false);
        if (this.selectionMode == 1) {
            button2.setVisibility(8);
        }
        this.layoutSelect = (LinearLayout) findViewById(R.id.fdLinearLayoutSelect);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.fdLinearLayoutCreate);
        this.layoutCreate = linearLayout;
        linearLayout.setVisibility(8);
        if (this.selectionMode == 1 && this.m_bOneClickSelect) {
            this.layoutSelect.setVisibility(8);
        }
        findViewById(R.id.fdButtonCancel).setOnClickListener(new View.OnClickListener() { // from class: com.tknetwork.tunnel.view.FileDialog.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FileDialog fileDialog = FileDialog.this;
                fileDialog.setResult(0, fileDialog.getIntent());
                FileDialog.this.finish();
            }
        });
        findViewById(R.id.fdButtonCreate).setOnClickListener(new View.OnClickListener() { // from class: com.tknetwork.tunnel.view.FileDialog.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (FileDialog.this.mFileName.getText().length() > 0) {
                    FileDialog.this.getIntent().putExtra(new ObfuscatedString(new long[]{3819441437726416674L, -5100495532625717322L, 2772176039452682969L}).toString(), FileDialog.this.currentPath + new ObfuscatedString(new long[]{9171928475448284734L, 3682455843545566258L}).toString() + ((Object) FileDialog.this.mFileName.getText()));
                    FileDialog fileDialog = FileDialog.this;
                    fileDialog.setResult(-1, fileDialog.getIntent());
                    FileDialog.this.finish();
                }
            }
        });
        String stringExtra2 = getIntent().getStringExtra(new ObfuscatedString(new long[]{-1083735124428132336L, 1167388644351353887L, 1465379874902110042L}).toString());
        if (stringExtra2 == null) {
            stringExtra2 = new ObfuscatedString(new long[]{-15559379549917859L, 9033439118824216461L}).toString();
        }
        if (this.canSelectDir) {
            this.selectedFile = new File(stringExtra2);
            this.selectButton.setEnabled(true);
        }
        getDir(stringExtra2);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4) {
            return super.onKeyDown(i, keyEvent);
        }
        this.selectButton.setEnabled(false);
        if (this.layoutCreate.getVisibility() == 0) {
            this.layoutCreate.setVisibility(8);
            this.layoutSelect.setVisibility(0);
            return true;
        }
        if (this.currentPath.equals(EXT_STORAGE)) {
            return super.onKeyDown(i, keyEvent);
        }
        getDir(this.parentPath);
        return true;
    }

    @Override // android.app.ListActivity
    public void onListItemClick(ListView listView, View view, int i, long j) {
        File file = new File(this.path.get(i));
        setSelectVisible(view);
        if (file.isDirectory()) {
            this.selectButton.setEnabled(false);
            if (file.canRead()) {
                this.lastPositions.put(this.currentPath, Integer.valueOf(i));
                getDir(this.path.get(i));
                if (this.canSelectDir) {
                    this.selectedFile = file;
                    view.setSelected(true);
                    this.selectButton.setEnabled(true);
                    return;
                }
                return;
            }
            new AlertDialog.Builder(this).setIcon(R.drawable.error).setTitle(new ObfuscatedString(new long[]{-2487006377195280492L, -2789982744141040911L}).toString() + file.getName() + new ObfuscatedString(new long[]{5931468529052704951L, -5228345202190091616L}).toString() + ((Object) getText(R.string.file_dialog_cant_read_folder))).setPositiveButton(new ObfuscatedString(new long[]{1210571421606078075L, -1956039895569813636L}).toString(), new DialogInterface.OnClickListener() { // from class: com.tknetwork.tunnel.view.FileDialog.5
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                }
            }).show();
            return;
        }
        this.selectedFile = file;
        view.setSelected(true);
        this.selectButton.setEnabled(true);
        showLocation(R.string.file_dialog_select, file.getPath());
        if (this.m_bOneClickSelect) {
            this.selectButton.performClick();
        }
    }
}
