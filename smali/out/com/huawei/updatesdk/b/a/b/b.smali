.class public Lcom/huawei/updatesdk/b/a/b/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static b:Lcom/huawei/updatesdk/b/a/b/b;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/huawei/updatesdk/b/a/b/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/updatesdk/b/a/b/b;->a:Ljava/util/Map;

    return-void
.end method

.method public static declared-synchronized a()Lcom/huawei/updatesdk/b/a/b/b;
    .registers 2

    const-class v0, Lcom/huawei/updatesdk/b/a/b/b;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/huawei/updatesdk/b/a/b/b;->b:Lcom/huawei/updatesdk/b/a/b/b;

    if-nez v1, :cond_e

    new-instance v1, Lcom/huawei/updatesdk/b/a/b/b;

    invoke-direct {v1}, Lcom/huawei/updatesdk/b/a/b/b;-><init>()V

    sput-object v1, Lcom/huawei/updatesdk/b/a/b/b;->b:Lcom/huawei/updatesdk/b/a/b/b;

    :cond_e
    sget-object v1, Lcom/huawei/updatesdk/b/a/b/b;->b:Lcom/huawei/updatesdk/b/a/b/b;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(Lcom/huawei/updatesdk/b/a/b/a;)V
    .registers 3

    invoke-static {}, Lcom/huawei/updatesdk/b/a/b/b;->a()Lcom/huawei/updatesdk/b/a/b/b;

    move-result-object v0

    iget-object v0, v0, Lcom/huawei/updatesdk/b/a/b/b;->a:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/huawei/updatesdk/b/a/b/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static b(Landroid/content/pm/PackageInfo;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/updatesdk/b/a/b/a;

    invoke-direct {v0}, Lcom/huawei/updatesdk/b/a/b/a;-><init>()V

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/updatesdk/b/a/b/a;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v2, 0x0

    if-nez p0, :cond_1b

    return-object v2

    :cond_1b
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/huawei/updatesdk/b/a/b/a;->a(J)V

    invoke-static {v1}, Lcom/huawei/updatesdk/b/a/b/c;->a(Ljava/io/File;)Lcom/huawei/updatesdk/b/a/b/c$a;

    move-result-object p0

    iget-object v1, p0, Lcom/huawei/updatesdk/b/a/b/c$a;->a:Landroid/util/ArrayMap;

    if-eqz v1, :cond_96

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_96

    iget-object v1, p0, Lcom/huawei/updatesdk/b/a/b/c$a;->b:Landroid/util/ArraySet;

    if-eqz v1, :cond_96

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3b

    goto :goto_96

    :cond_3b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/huawei/updatesdk/b/a/b/c$a;->a:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4a
    :goto_4a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_87

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/huawei/updatesdk/b/a/b/c$a;->b:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_65

    goto :goto_4a

    :cond_65
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/PublicKey;

    invoke-interface {v4}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/updatesdk/a/a/d/g;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    :cond_87
    new-instance p0, Lcom/huawei/updatesdk/b/a/b/a$a;

    invoke-direct {p0}, Lcom/huawei/updatesdk/b/a/b/a$a;-><init>()V

    invoke-virtual {p0, v1}, Lcom/huawei/updatesdk/b/a/b/a$a;->a(Ljava/util/List;)V

    invoke-virtual {v0, p0}, Lcom/huawei/updatesdk/b/a/b/a;->a(Lcom/huawei/updatesdk/b/a/b/a$a;)V

    invoke-static {v0}, Lcom/huawei/updatesdk/b/a/b/b;->a(Lcom/huawei/updatesdk/b/a/b/a;)V

    return-object v1

    :cond_96
    :goto_96
    invoke-static {v0}, Lcom/huawei/updatesdk/b/a/b/b;->a(Lcom/huawei/updatesdk/b/a/b/a;)V

    return-object v2
.end method


# virtual methods
.method public a(Landroid/content/pm/PackageInfo;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_46

    if-eqz p1, :cond_46

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-nez v0, :cond_10

    goto :goto_46

    :cond_10
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-static {}, Lcom/huawei/updatesdk/b/a/b/b;->a()Lcom/huawei/updatesdk/b/a/b/b;

    move-result-object v0

    iget-object v0, v0, Lcom/huawei/updatesdk/b/a/b/b;->a:Ljava/util/Map;

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/updatesdk/b/a/b/a;

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Lcom/huawei/updatesdk/b/a/b/a;->b()J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-nez v2, :cond_41

    invoke-virtual {v0}, Lcom/huawei/updatesdk/b/a/b/a;->a()Lcom/huawei/updatesdk/b/a/b/a$a;

    move-result-object p1

    if-nez p1, :cond_38

    return-object v1

    :cond_38
    invoke-virtual {v0}, Lcom/huawei/updatesdk/b/a/b/a;->a()Lcom/huawei/updatesdk/b/a/b/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/updatesdk/b/a/b/a$a;->a()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_41
    invoke-static {p1}, Lcom/huawei/updatesdk/b/a/b/b;->b(Landroid/content/pm/PackageInfo;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    :cond_46
    :goto_46
    return-object v1
.end method
