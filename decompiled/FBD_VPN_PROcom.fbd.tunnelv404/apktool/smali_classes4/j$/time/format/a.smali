.class public final Lj$/time/format/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lj$/time/format/a;


# instance fields
.field private final a:Lj$/time/format/f;

.field private final b:Ljava/util/Locale;

.field private final c:Lj$/time/format/t;

.field private final d:Lj$/time/chrono/u;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 740
    new-instance v0, Lj$/time/format/o;

    invoke-direct {v0}, Lj$/time/format/o;-><init>()V

    sget-object v1, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    sget-object v2, Lj$/time/format/v;->EXCEEDS_PAD:Lj$/time/format/v;

    const/4 v3, 0x4

    const/16 v4, 0xa

    .line 741
    invoke-virtual {v0, v1, v3, v4, v2}, Lj$/time/format/o;->l(Lj$/time/temporal/q;IILj$/time/format/v;)V

    const/16 v5, 0x2d

    .line 742
    invoke-virtual {v0, v5}, Lj$/time/format/o;->e(C)V

    sget-object v6, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    const/4 v7, 0x2

    .line 743
    invoke-virtual {v0, v6, v7}, Lj$/time/format/o;->k(Lj$/time/temporal/q;I)V

    .line 744
    invoke-virtual {v0, v5}, Lj$/time/format/o;->e(C)V

    sget-object v8, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    .line 745
    invoke-virtual {v0, v8, v7}, Lj$/time/format/o;->k(Lj$/time/temporal/q;I)V

    sget-object v9, Lj$/time/format/u;->STRICT:Lj$/time/format/u;

    sget-object v10, Lj$/time/chrono/u;->d:Lj$/time/chrono/u;

    .line 746
    invoke-virtual {v0, v9, v10}, Lj$/time/format/o;->t(Lj$/time/format/u;Lj$/time/chrono/u;)Lj$/time/format/a;

    move-result-object v0

    .line 770
    new-instance v11, Lj$/time/format/o;

    invoke-direct {v11}, Lj$/time/format/o;-><init>()V

    .line 771
    invoke-virtual {v11}, Lj$/time/format/o;->p()V

    .line 772
    invoke-virtual {v11, v0}, Lj$/time/format/o;->a(Lj$/time/format/a;)V

    .line 773
    invoke-virtual {v11}, Lj$/time/format/o;->h()V

    .line 774
    invoke-virtual {v11, v9, v10}, Lj$/time/format/o;->t(Lj$/time/format/u;Lj$/time/chrono/u;)Lj$/time/format/a;

    .line 802
    new-instance v11, Lj$/time/format/o;

    invoke-direct {v11}, Lj$/time/format/o;-><init>()V

    .line 803
    invoke-virtual {v11}, Lj$/time/format/o;->p()V

    .line 804
    invoke-virtual {v11, v0}, Lj$/time/format/o;->a(Lj$/time/format/a;)V

    .line 805
    invoke-virtual {v11}, Lj$/time/format/o;->o()V

    .line 806
    invoke-virtual {v11}, Lj$/time/format/o;->h()V

    .line 807
    invoke-virtual {v11, v9, v10}, Lj$/time/format/o;->t(Lj$/time/format/u;Lj$/time/chrono/u;)Lj$/time/format/a;

    .line 839
    new-instance v11, Lj$/time/format/o;

    invoke-direct {v11}, Lj$/time/format/o;-><init>()V

    sget-object v12, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    .line 840
    invoke-virtual {v11, v12, v7}, Lj$/time/format/o;->k(Lj$/time/temporal/q;I)V

    const/16 v13, 0x3a

    .line 841
    invoke-virtual {v11, v13}, Lj$/time/format/o;->e(C)V

    sget-object v14, Lj$/time/temporal/a;->MINUTE_OF_HOUR:Lj$/time/temporal/a;

    .line 842
    invoke-virtual {v11, v14, v7}, Lj$/time/format/o;->k(Lj$/time/temporal/q;I)V

    .line 843
    invoke-virtual {v11}, Lj$/time/format/o;->o()V

    .line 844
    invoke-virtual {v11, v13}, Lj$/time/format/o;->e(C)V

    sget-object v15, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    .line 845
    invoke-virtual {v11, v15, v7}, Lj$/time/format/o;->k(Lj$/time/temporal/q;I)V

    .line 846
    invoke-virtual {v11}, Lj$/time/format/o;->o()V

    sget-object v13, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    .line 847
    invoke-virtual {v11, v13}, Lj$/time/format/o;->b(Lj$/time/temporal/a;)V

    const/4 v13, 0x0

    .line 848
    invoke-virtual {v11, v9, v13}, Lj$/time/format/o;->t(Lj$/time/format/u;Lj$/time/chrono/u;)Lj$/time/format/a;

    move-result-object v11

    .line 871
    new-instance v7, Lj$/time/format/o;

    invoke-direct {v7}, Lj$/time/format/o;-><init>()V

    .line 872
    invoke-virtual {v7}, Lj$/time/format/o;->p()V

    .line 873
    invoke-virtual {v7, v11}, Lj$/time/format/o;->a(Lj$/time/format/a;)V

    .line 874
    invoke-virtual {v7}, Lj$/time/format/o;->h()V

    .line 875
    invoke-virtual {v7, v9, v13}, Lj$/time/format/o;->t(Lj$/time/format/u;Lj$/time/chrono/u;)Lj$/time/format/a;

    .line 902
    new-instance v7, Lj$/time/format/o;

    invoke-direct {v7}, Lj$/time/format/o;-><init>()V

    .line 903
    invoke-virtual {v7}, Lj$/time/format/o;->p()V

    .line 904
    invoke-virtual {v7, v11}, Lj$/time/format/o;->a(Lj$/time/format/a;)V

    .line 905
    invoke-virtual {v7}, Lj$/time/format/o;->o()V

    .line 906
    invoke-virtual {v7}, Lj$/time/format/o;->h()V

    .line 907
    invoke-virtual {v7, v9, v13}, Lj$/time/format/o;->t(Lj$/time/format/u;Lj$/time/chrono/u;)Lj$/time/format/a;

    .line 930
    new-instance v7, Lj$/time/format/o;

    invoke-direct {v7}, Lj$/time/format/o;-><init>()V

    .line 931
    invoke-virtual {v7}, Lj$/time/format/o;->p()V

    .line 932
    invoke-virtual {v7, v0}, Lj$/time/format/o;->a(Lj$/time/format/a;)V

    const/16 v0, 0x54

    .line 933
    invoke-virtual {v7, v0}, Lj$/time/format/o;->e(C)V

    .line 934
    invoke-virtual {v7, v11}, Lj$/time/format/o;->a(Lj$/time/format/a;)V

    .line 935
    invoke-virtual {v7, v9, v10}, Lj$/time/format/o;->t(Lj$/time/format/u;Lj$/time/chrono/u;)Lj$/time/format/a;

    move-result-object v0

    .line 960
    new-instance v7, Lj$/time/format/o;

    invoke-direct {v7}, Lj$/time/format/o;-><init>()V

    .line 961
    invoke-virtual {v7}, Lj$/time/format/o;->p()V

    .line 962
    invoke-virtual {v7, v0}, Lj$/time/format/o;->a(Lj$/time/format/a;)V

    .line 963
    invoke-virtual {v7}, Lj$/time/format/o;->r()V

    .line 964
    invoke-virtual {v7}, Lj$/time/format/o;->h()V

    .line 965
    invoke-virtual {v7}, Lj$/time/format/o;->s()V

    .line 966
    invoke-virtual {v7, v9, v10}, Lj$/time/format/o;->t(Lj$/time/format/u;Lj$/time/chrono/u;)Lj$/time/format/a;

    move-result-object v7

    .line 994
    new-instance v11, Lj$/time/format/o;

    invoke-direct {v11}, Lj$/time/format/o;-><init>()V

    .line 995
    invoke-virtual {v11, v7}, Lj$/time/format/o;->a(Lj$/time/format/a;)V

    .line 996
    invoke-virtual {v11}, Lj$/time/format/o;->o()V

    const/16 v7, 0x5b

    .line 997
    invoke-virtual {v11, v7}, Lj$/time/format/o;->e(C)V

    .line 998
    invoke-virtual {v11}, Lj$/time/format/o;->q()V

    .line 999
    invoke-virtual {v11}, Lj$/time/format/o;->m()V

    const/16 v13, 0x5d

    .line 1000
    invoke-virtual {v11, v13}, Lj$/time/format/o;->e(C)V

    .line 1001
    invoke-virtual {v11, v9, v10}, Lj$/time/format/o;->t(Lj$/time/format/u;Lj$/time/chrono/u;)Lj$/time/format/a;

    .line 1035
    new-instance v11, Lj$/time/format/o;

    invoke-direct {v11}, Lj$/time/format/o;-><init>()V

    .line 1036
    invoke-virtual {v11, v0}, Lj$/time/format/o;->a(Lj$/time/format/a;)V

    .line 1037
    invoke-virtual {v11}, Lj$/time/format/o;->o()V

    .line 1038
    invoke-virtual {v11}, Lj$/time/format/o;->h()V

    .line 1039
    invoke-virtual {v11}, Lj$/time/format/o;->o()V

    .line 1040
    invoke-virtual {v11, v7}, Lj$/time/format/o;->e(C)V

    .line 1041
    invoke-virtual {v11}, Lj$/time/format/o;->q()V

    .line 1042
    invoke-virtual {v11}, Lj$/time/format/o;->m()V

    .line 1043
    invoke-virtual {v11, v13}, Lj$/time/format/o;->e(C)V

    .line 1044
    invoke-virtual {v11, v9, v10}, Lj$/time/format/o;->t(Lj$/time/format/u;Lj$/time/chrono/u;)Lj$/time/format/a;

    .line 1077
    new-instance v0, Lj$/time/format/o;

    invoke-direct {v0}, Lj$/time/format/o;-><init>()V

    .line 1078
    invoke-virtual {v0}, Lj$/time/format/o;->p()V

    .line 1079
    invoke-virtual {v0, v1, v3, v4, v2}, Lj$/time/format/o;->l(Lj$/time/temporal/q;IILj$/time/format/v;)V

    .line 1080
    invoke-virtual {v0, v5}, Lj$/time/format/o;->e(C)V

    sget-object v7, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    const/4 v11, 0x3

    .line 1081
    invoke-virtual {v0, v7, v11}, Lj$/time/format/o;->k(Lj$/time/temporal/q;I)V

    .line 1082
    invoke-virtual {v0}, Lj$/time/format/o;->o()V

    .line 1083
    invoke-virtual {v0}, Lj$/time/format/o;->h()V

    .line 1084
    invoke-virtual {v0, v9, v10}, Lj$/time/format/o;->t(Lj$/time/format/u;Lj$/time/chrono/u;)Lj$/time/format/a;

    .line 1121
    new-instance v0, Lj$/time/format/o;

    invoke-direct {v0}, Lj$/time/format/o;-><init>()V

    .line 1122
    invoke-virtual {v0}, Lj$/time/format/o;->p()V

    sget-object v7, Lj$/time/temporal/i;->c:Lj$/time/temporal/q;

    .line 1123
    invoke-virtual {v0, v7, v3, v4, v2}, Lj$/time/format/o;->l(Lj$/time/temporal/q;IILj$/time/format/v;)V

    const-string v2, "-W"

    .line 1124
    invoke-virtual {v0, v2}, Lj$/time/format/o;->f(Ljava/lang/String;)V

    sget-object v2, Lj$/time/temporal/i;->b:Lj$/time/temporal/q;

    const/4 v4, 0x2

    .line 1125
    invoke-virtual {v0, v2, v4}, Lj$/time/format/o;->k(Lj$/time/temporal/q;I)V

    .line 1126
    invoke-virtual {v0, v5}, Lj$/time/format/o;->e(C)V

    sget-object v2, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    const/4 v4, 0x1

    .line 1127
    invoke-virtual {v0, v2, v4}, Lj$/time/format/o;->k(Lj$/time/temporal/q;I)V

    .line 1128
    invoke-virtual {v0}, Lj$/time/format/o;->o()V

    .line 1129
    invoke-virtual {v0}, Lj$/time/format/o;->h()V

    .line 1130
    invoke-virtual {v0, v9, v10}, Lj$/time/format/o;->t(Lj$/time/format/u;Lj$/time/chrono/u;)Lj$/time/format/a;

    .line 1166
    new-instance v0, Lj$/time/format/o;

    invoke-direct {v0}, Lj$/time/format/o;-><init>()V

    .line 1167
    invoke-virtual {v0}, Lj$/time/format/o;->p()V

    .line 1168
    invoke-virtual {v0}, Lj$/time/format/o;->c()V

    const/4 v5, 0x0

    .line 1169
    invoke-virtual {v0, v9, v5}, Lj$/time/format/o;->t(Lj$/time/format/u;Lj$/time/chrono/u;)Lj$/time/format/a;

    move-result-object v0

    sput-object v0, Lj$/time/format/a;->e:Lj$/time/format/a;

    .line 1203
    new-instance v0, Lj$/time/format/o;

    invoke-direct {v0}, Lj$/time/format/o;-><init>()V

    .line 1204
    invoke-virtual {v0}, Lj$/time/format/o;->p()V

    .line 1205
    invoke-virtual {v0, v1, v3}, Lj$/time/format/o;->k(Lj$/time/temporal/q;I)V

    const/4 v5, 0x2

    .line 1206
    invoke-virtual {v0, v6, v5}, Lj$/time/format/o;->k(Lj$/time/temporal/q;I)V

    .line 1207
    invoke-virtual {v0, v8, v5}, Lj$/time/format/o;->k(Lj$/time/temporal/q;I)V

    .line 1208
    invoke-virtual {v0}, Lj$/time/format/o;->o()V

    .line 1209
    invoke-virtual {v0}, Lj$/time/format/o;->r()V

    const-string v5, "+HHMMss"

    const-string v7, "Z"

    .line 1210
    invoke-virtual {v0, v5, v7}, Lj$/time/format/o;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    invoke-virtual {v0}, Lj$/time/format/o;->s()V

    .line 1212
    invoke-virtual {v0, v9, v10}, Lj$/time/format/o;->t(Lj$/time/format/u;Lj$/time/chrono/u;)Lj$/time/format/a;

    .line 1263
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v16, 0x1

    .line 1264
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v7, "Mon"

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v16, 0x2

    .line 1265
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v9, "Tue"

    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v16, 0x3

    .line 1266
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v11, "Wed"

    invoke-virtual {v0, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v16, 0x4

    .line 1267
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v13, "Thu"

    invoke-virtual {v0, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v16, 0x5

    .line 1268
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const-string v3, "Fri"

    invoke-virtual {v0, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v17, 0x6

    .line 1269
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Sat"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v18, 0x7

    .line 1270
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v18, v10

    const-string v10, "Sun"

    invoke-virtual {v0, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v19, v15

    .line 1272
    const-string v15, "Jan"

    invoke-virtual {v10, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    const-string v5, "Feb"

    invoke-virtual {v10, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    const-string v5, "Mar"

    invoke-virtual {v10, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    const-string v5, "Apr"

    invoke-virtual {v10, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    const-string v5, "May"

    invoke-virtual {v10, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    const-string v5, "Jun"

    invoke-virtual {v10, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    const-string v3, "Jul"

    invoke-virtual {v10, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v3, 0x8

    .line 1279
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Aug"

    invoke-virtual {v10, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v3, 0x9

    .line 1280
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Sep"

    invoke-virtual {v10, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v3, 0xa

    .line 1281
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Oct"

    invoke-virtual {v10, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v3, 0xb

    .line 1282
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Nov"

    invoke-virtual {v10, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v3, 0xc

    .line 1283
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Dec"

    invoke-virtual {v10, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    new-instance v3, Lj$/time/format/o;

    invoke-direct {v3}, Lj$/time/format/o;-><init>()V

    .line 1285
    invoke-virtual {v3}, Lj$/time/format/o;->p()V

    .line 1286
    invoke-virtual {v3}, Lj$/time/format/o;->r()V

    .line 1287
    invoke-virtual {v3}, Lj$/time/format/o;->o()V

    .line 1288
    invoke-virtual {v3, v2, v0}, Lj$/time/format/o;->i(Lj$/time/temporal/a;Ljava/util/HashMap;)V

    const-string v0, ", "

    .line 1289
    invoke-virtual {v3, v0}, Lj$/time/format/o;->f(Ljava/lang/String;)V

    .line 1290
    invoke-virtual {v3}, Lj$/time/format/o;->n()V

    sget-object v0, Lj$/time/format/v;->NOT_NEGATIVE:Lj$/time/format/v;

    const/4 v2, 0x2

    const/4 v4, 0x1

    .line 1291
    invoke-virtual {v3, v8, v4, v2, v0}, Lj$/time/format/o;->l(Lj$/time/temporal/q;IILj$/time/format/v;)V

    const/16 v0, 0x20

    .line 1292
    invoke-virtual {v3, v0}, Lj$/time/format/o;->e(C)V

    .line 1293
    invoke-virtual {v3, v6, v10}, Lj$/time/format/o;->i(Lj$/time/temporal/a;Ljava/util/HashMap;)V

    .line 1294
    invoke-virtual {v3, v0}, Lj$/time/format/o;->e(C)V

    const/4 v4, 0x4

    .line 1295
    invoke-virtual {v3, v1, v4}, Lj$/time/format/o;->k(Lj$/time/temporal/q;I)V

    .line 1296
    invoke-virtual {v3, v0}, Lj$/time/format/o;->e(C)V

    .line 1297
    invoke-virtual {v3, v12, v2}, Lj$/time/format/o;->k(Lj$/time/temporal/q;I)V

    const/16 v1, 0x3a

    .line 1298
    invoke-virtual {v3, v1}, Lj$/time/format/o;->e(C)V

    .line 1299
    invoke-virtual {v3, v14, v2}, Lj$/time/format/o;->k(Lj$/time/temporal/q;I)V

    .line 1300
    invoke-virtual {v3}, Lj$/time/format/o;->o()V

    .line 1301
    invoke-virtual {v3, v1}, Lj$/time/format/o;->e(C)V

    move-object/from16 v1, v19

    .line 1302
    invoke-virtual {v3, v1, v2}, Lj$/time/format/o;->k(Lj$/time/temporal/q;I)V

    .line 1303
    invoke-virtual {v3}, Lj$/time/format/o;->n()V

    .line 1304
    invoke-virtual {v3, v0}, Lj$/time/format/o;->e(C)V

    const-string v0, "+HHMM"

    const-string v1, "GMT"

    .line 1305
    invoke-virtual {v3, v0, v1}, Lj$/time/format/o;->g(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lj$/time/format/u;->SMART:Lj$/time/format/u;

    move-object/from16 v1, v18

    .line 1306
    invoke-virtual {v3, v0, v1}, Lj$/time/format/o;->t(Lj$/time/format/u;Lj$/time/chrono/u;)Lj$/time/format/a;

    return-void
.end method

.method constructor <init>(Lj$/time/format/f;Ljava/util/Locale;Lj$/time/format/u;Lj$/time/chrono/u;)V
    .locals 2

    sget-object v0, Lj$/time/format/t;->a:Lj$/time/format/t;

    .line 1417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1418
    const-string v1, "printerParser"

    invoke-static {p1, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/format/f;

    iput-object p1, p0, Lj$/time/format/a;->a:Lj$/time/format/f;

    .line 1420
    const-string p1, "locale"

    invoke-static {p2, p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lj$/time/format/a;->b:Ljava/util/Locale;

    .line 1421
    const-string p1, "decimalStyle"

    invoke-static {v0, p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/format/t;

    iput-object p1, p0, Lj$/time/format/a;->c:Lj$/time/format/t;

    .line 1422
    const-string p1, "resolverStyle"

    invoke-static {p3, p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/format/u;

    .line 1423
    iput-object p4, p0, Lj$/time/format/a;->d:Lj$/time/chrono/u;

    return-void
.end method


# virtual methods
.method public final a(Lj$/time/Instant;)Ljava/lang/String;
    .locals 2

    .line 1769
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1791
    const-string v1, "temporal"

    invoke-static {p1, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1792
    const-string v1, "appendable"

    invoke-static {v0, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1794
    :try_start_0
    new-instance v1, Lj$/time/format/q;

    invoke-direct {v1, p1, p0}, Lj$/time/format/q;-><init>(Lj$/time/Instant;Lj$/time/format/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1795
    iget-object p1, p0, Lj$/time/format/a;->a:Lj$/time/format/f;

    .line 1796
    :try_start_1
    invoke-virtual {p1, v1, v0}, Lj$/time/format/f;->j(Lj$/time/format/q;Ljava/lang/StringBuilder;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1771
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 1804
    new-instance v0, Lj$/time/c;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1804
    throw v0
.end method

.method public final b()Lj$/time/chrono/n;
    .locals 1

    .line 1501
    iget-object v0, p0, Lj$/time/format/a;->d:Lj$/time/chrono/u;

    return-object v0
.end method

.method public final c()Lj$/time/format/t;
    .locals 1

    .line 1472
    iget-object v0, p0, Lj$/time/format/a;->c:Lj$/time/format/t;

    return-object v0
.end method

.method public final d()Ljava/util/Locale;
    .locals 1

    .line 1437
    iget-object v0, p0, Lj$/time/format/a;->b:Ljava/util/Locale;

    return-object v0
.end method

.method final e()Lj$/time/format/f;
    .locals 1

    .line 2077
    iget-object v0, p0, Lj$/time/format/a;->a:Lj$/time/format/f;

    invoke-virtual {v0}, Lj$/time/format/f;->a()Lj$/time/format/f;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 2126
    iget-object v0, p0, Lj$/time/format/a;->a:Lj$/time/format/f;

    invoke-virtual {v0}, Lj$/time/format/f;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2127
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
