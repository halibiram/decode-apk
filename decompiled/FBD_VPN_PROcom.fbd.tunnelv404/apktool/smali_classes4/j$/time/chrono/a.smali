.class public abstract Lj$/time/chrono/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/chrono/n;


# static fields
.field private static final a:Lj$/util/concurrent/ConcurrentHashMap;

.field private static final b:Lj$/util/concurrent/ConcurrentHashMap;

.field public static final synthetic c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 130
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lj$/time/chrono/a;->a:Lj$/util/concurrent/ConcurrentHashMap;

    .line 134
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lj$/time/chrono/a;->b:Lj$/util/concurrent/ConcurrentHashMap;

    .line 253
    new-instance v0, Ljava/util/Locale;

    const-string v1, "ja"

    const-string v2, "JP"

    invoke-direct {v0, v1, v2, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static j(Ljava/lang/String;)Lj$/time/chrono/n;
    .locals 4

    .line 277
    const-string v0, "id"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 306
    :goto_0
    sget-object v0, Lj$/time/chrono/a;->a:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/time/chrono/n;

    if-nez v1, :cond_0

    .line 308
    sget-object v1, Lj$/time/chrono/a;->b:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/time/chrono/n;

    :cond_0
    if-eqz v1, :cond_1

    return-object v1

    .line 184
    :cond_1
    const-string v1, "ISO"

    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    .line 188
    sget-object v0, Lj$/time/chrono/q;->o:Lj$/time/chrono/q;

    .line 145
    invoke-interface {v0}, Lj$/time/chrono/n;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lj$/time/chrono/a;->k(Lj$/time/chrono/a;Ljava/lang/String;)Lj$/time/chrono/n;

    .line 189
    sget-object v0, Lj$/time/chrono/x;->d:Lj$/time/chrono/x;

    .line 145
    invoke-interface {v0}, Lj$/time/chrono/n;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lj$/time/chrono/a;->k(Lj$/time/chrono/a;Ljava/lang/String;)Lj$/time/chrono/n;

    .line 190
    sget-object v0, Lj$/time/chrono/C;->d:Lj$/time/chrono/C;

    .line 145
    invoke-interface {v0}, Lj$/time/chrono/n;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lj$/time/chrono/a;->k(Lj$/time/chrono/a;Ljava/lang/String;)Lj$/time/chrono/n;

    .line 191
    sget-object v0, Lj$/time/chrono/I;->d:Lj$/time/chrono/I;

    .line 145
    invoke-interface {v0}, Lj$/time/chrono/n;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lj$/time/chrono/a;->k(Lj$/time/chrono/a;Ljava/lang/String;)Lj$/time/chrono/n;

    const/4 v0, 0x0

    .line 196
    :try_start_0
    new-array v0, v0, [Lj$/time/chrono/a;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/time/chrono/a;

    .line 197
    invoke-interface {v2}, Lj$/time/chrono/n;->i()Ljava/lang/String;

    move-result-object v3

    .line 198
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 145
    invoke-interface {v2}, Lj$/time/chrono/n;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lj$/time/chrono/a;->k(Lj$/time/chrono/a;Ljava/lang/String;)Lj$/time/chrono/n;

    goto :goto_1

    .line 207
    :cond_3
    sget-object v0, Lj$/time/chrono/u;->d:Lj$/time/chrono/u;

    .line 145
    invoke-interface {v0}, Lj$/time/chrono/n;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lj$/time/chrono/a;->k(Lj$/time/chrono/a;Ljava/lang/String;)Lj$/time/chrono/n;

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 196
    new-instance v0, Ljava/util/ServiceConfigurationError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 289
    :cond_4
    const-class v0, Lj$/time/chrono/n;

    invoke-static {v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/time/chrono/n;

    .line 291
    invoke-interface {v1}, Lj$/time/chrono/n;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v1}, Lj$/time/chrono/n;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_6
    return-object v1

    .line 295
    :cond_7
    new-instance v0, Lj$/time/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown chronology: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 88
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 295
    throw v0
.end method

.method static k(Lj$/time/chrono/a;Ljava/lang/String;)Lj$/time/chrono/n;
    .locals 2

    .line 158
    sget-object v0, Lj$/time/chrono/a;->a:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p0}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/n;

    if-nez p1, :cond_0

    .line 160
    invoke-interface {p0}, Lj$/time/chrono/n;->r()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    sget-object v1, Lj$/time/chrono/a;->b:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p0}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p1
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 125
    check-cast p1, Lj$/time/chrono/n;

    .line 682
    invoke-interface {p0}, Lj$/time/chrono/n;->i()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lj$/time/chrono/n;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 702
    :cond_0
    instance-of v1, p1, Lj$/time/chrono/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 703
    check-cast p1, Lj$/time/chrono/a;

    .line 682
    invoke-interface {p0}, Lj$/time/chrono/n;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lj$/time/chrono/n;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 721
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-interface {p0}, Lj$/time/chrono/n;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public o(Lj$/time/j;)Lj$/time/chrono/e;
    .locals 3

    .line 477
    :try_start_0
    invoke-interface {p0, p1}, Lj$/time/chrono/n;->l(Lj$/time/temporal/n;)Lj$/time/chrono/b;

    move-result-object v0

    invoke-static {p1}, Lj$/time/l;->E(Lj$/time/temporal/n;)Lj$/time/l;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/time/chrono/b;->u(Lj$/time/l;)Lj$/time/chrono/e;

    move-result-object p1
    :try_end_0
    .catch Lj$/time/c; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 479
    new-instance v0, Lj$/time/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to obtain ChronoLocalDateTime from TemporalAccessor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lj$/time/j;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 479
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 732
    invoke-interface {p0}, Lj$/time/chrono/n;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
