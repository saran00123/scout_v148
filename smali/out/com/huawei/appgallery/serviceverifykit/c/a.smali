.class public Lcom/huawei/appgallery/serviceverifykit/c/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/appgallery/serviceverifykit/api/ServiceVerifyKit$b;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Landroid/content/Intent;

.field private o:Lcom/huawei/appgallery/serviceverifykit/api/ServiceVerifyKit$Builder$ComponentType;

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Landroid/content/Context;

.field private u:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->g:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->i:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->j:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->k:I

    iput v0, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->p:I

    iput v0, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->q:I

    iput v0, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->r:I

    iput v0, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->s:I

    iput-object p1, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->t:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/os/Bundle;I)I
    .registers 7

    const-string v0, "ag.application.base_priority"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    :try_start_8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_e

    add-int/2addr p2, p1

    goto :goto_34

    :catch_e
    sget-object v1, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->b:Lcom/huawei/appgallery/serviceverifykit/d/d/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "skip package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not number"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MatchAppFinder"

    invoke-virtual {v1, v0, p1}, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit16 p2, p2, 0x3e8

    return p2

    :cond_32
    add-int/lit16 p2, p2, 0x3e8

    :goto_34
    return p2
.end method

.method private a(Landroid/os/Bundle;ILjava/util/List;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/util/List<",
            "Lcom/huawei/appgallery/serviceverifykit/api/ServiceVerifyKit$b;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    :cond_7
    :goto_7
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/appgallery/serviceverifykit/api/ServiceVerifyKit$b;

    if-ne p2, v1, :cond_38

    invoke-virtual {v3}, Lcom/huawei/appgallery/serviceverifykit/api/ServiceVerifyKit$b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {v3}, Lcom/huawei/appgallery/serviceverifykit/api/ServiceVerifyKit$b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/huawei/appgallery/serviceverifykit/api/ServiceVerifyKit$b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    move v2, v1

    goto :goto_7

    :cond_37
    return v0

    :cond_38
    const/4 v4, 0x2

    if-ne p2, v4, :cond_5e

    invoke-virtual {v3}, Lcom/huawei/appgallery/serviceverifykit/api/ServiceVerifyKit$b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lcom/huawei/appgallery/serviceverifykit/api/ServiceVerifyKit$b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/huawei/appgallery/serviceverifykit/api/ServiceVerifyKit$b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_5e
    sget-object v3, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->b:Lcom/huawei/appgallery/serviceverifykit/d/d/b;

    const-string v4, "MatchAppFinder"

    const-string v5, "error input preferred package name"

    invoke-virtual {v3, v4, v5}, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_68
    return v2
.end method

.method private a(Landroid/os/Bundle;Ljava/lang/String;)I
    .registers 4

    iget-object v0, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_19

    :cond_16
    const/4 p1, -0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :cond_5
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_19
    return v0
.end method

.method private a(Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;I)Lcom/huawei/appgallery/serviceverifykit/a/a;
    .registers 15

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v0, 0x0

    const-string v1, "MatchAppFinder"

    if-nez p1, :cond_25

    sget-object p1, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->b:Lcom/huawei/appgallery/serviceverifykit/d/d/b;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "skip package "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " for metadata is null"

    :goto_1a
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_25
    iget-object v2, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->u:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/huawei/appgallery/serviceverifykit/c/a;->a(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v7

    iget-object v2, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->d:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_61

    iget-object v2, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->e:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    goto :goto_61

    :cond_3c
    invoke-direct {p0, p3, p2}, Lcom/huawei/appgallery/serviceverifykit/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_54

    const/4 p2, 0x1

    iput p2, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->q:I

    iget-object p2, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->g:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->p:I

    goto :goto_73

    :cond_54
    sget-object p1, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->b:Lcom/huawei/appgallery/serviceverifykit/d/d/b;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Legacy is false, packageName is "

    :goto_5d
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    :cond_61
    :goto_61
    invoke-direct {p0, p1, p3, p2}, Lcom/huawei/appgallery/serviceverifykit/c/a;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_71

    sget-object p1, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->b:Lcom/huawei/appgallery/serviceverifykit/d/d/b;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "checkSinger failed, packageName is "

    goto :goto_5d

    :cond_71
    iput p4, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->p:I

    :goto_73
    iget-object p2, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->i:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_83

    iget-object p2, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->i:Ljava/util/List;

    invoke-direct {p0, p3, p2}, Lcom/huawei/appgallery/serviceverifykit/c/a;->a(Ljava/lang/String;Ljava/util/List;)I

    move-result p2

    iput p2, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->r:I

    :cond_83
    iget-object p2, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->j:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_95

    iget p2, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->k:I

    iget-object p4, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->j:Ljava/util/List;

    invoke-direct {p0, p1, p2, p4}, Lcom/huawei/appgallery/serviceverifykit/c/a;->a(Landroid/os/Bundle;ILjava/util/List;)I

    move-result p2

    iput p2, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->s:I

    :cond_95
    iget p2, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->p:I

    invoke-direct {p0, p1, p2}, Lcom/huawei/appgallery/serviceverifykit/c/a;->a(Landroid/os/Bundle;I)I

    move-result v5

    new-instance p1, Lcom/huawei/appgallery/serviceverifykit/a/a;

    iget v6, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->q:I

    iget v8, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->r:I

    iget v9, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->s:I

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v3 .. v9}, Lcom/huawei/appgallery/serviceverifykit/a/a;-><init>(Ljava/lang/String;IIIII)V

    return-object p1
.end method

.method private a(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->o:Lcom/huawei/appgallery/serviceverifykit/api/ServiceVerifyKit$Builder$ComponentType;

    sget-object v1, Lcom/huawei/appgallery/serviceverifykit/api/ServiceVerifyKit$Builder$ComponentType;->ACTIVITY:Lcom/huawei/appgallery/serviceverifykit/api/ServiceVerifyKit$Builder$ComponentType;

    if-eq v0, v1, :cond_10

    sget-object v1, Lcom/huawei/appgallery/serviceverifykit/api/ServiceVerifyKit$Builder$ComponentType;->BROADCAST:Lcom/huawei/appgallery/serviceverifykit/api/ServiceVerifyKit$Builder$ComponentType;

    if-ne v0, v1, :cond_b

    goto :goto_10

    :cond_b
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_14

    :cond_10
    :goto_10
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :goto_14
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object p1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, ""

    const-string v1, "MatchAppFinder"

    const-string v2, "android.os.SystemProperties"

    :try_start_6
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_a} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a} :catch_24

    const-string v3, "get"

    const/4 v4, 0x1

    :try_start_d
    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_23} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_23} :catch_24

    return-object p0

    :catch_24
    sget-object p0, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->b:Lcom/huawei/appgallery/serviceverifykit/d/d/b;

    const-string v2, "getSystemProperties Exception while getting system property"

    :goto_28
    invoke-virtual {p0, v1, v2}, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_2c
    sget-object p0, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->b:Lcom/huawei/appgallery/serviceverifykit/d/d/b;

    const-string v2, "getSystemProperties ClassNotFoundException"

    goto :goto_28
.end method

.method private a(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->o:Lcom/huawei/appgallery/serviceverifykit/api/ServiceVerifyKit$Builder$ComponentType;

    if-nez v0, :cond_12

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_b
    iget v1, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->h:I

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    goto :goto_2f

    :cond_12
    sget-object v1, Lcom/huawei/appgallery/serviceverifykit/api/ServiceVerifyKit$Builder$ComponentType;->ACTIVITY:Lcom/huawei/appgallery/serviceverifykit/api/ServiceVerifyKit$Builder$ComponentType;

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->n:Landroid/content/Intent;

    iget v1, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->h:I

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    goto :goto_2f

    :cond_1f
    sget-object v1, Lcom/huawei/appgallery/serviceverifykit/api/ServiceVerifyKit$Builder$ComponentType;->BROADCAST:Lcom/huawei/appgallery/serviceverifykit/api/ServiceVerifyKit$Builder$ComponentType;

    if-ne v0, v1, :cond_2c

    iget-object v0, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->n:Landroid/content/Intent;

    iget v1, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->h:I

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    goto :goto_2f

    :cond_2c
    iget-object v0, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->n:Landroid/content/Intent;

    goto :goto_b

    :goto_2f
    return-object p1
.end method

.method private a(Ljava/util/List;Landroid/content/pm/PackageManager;I)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            "I)",
            "Ljava/util/List<",
            "Lcom/huawei/appgallery/serviceverifykit/a/a;",
            ">;"
        }
    .end annotation

    const-string v0, "MatchAppFinder"

    const-string v1, "skip package "

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_af

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v3}, Lcom/huawei/appgallery/serviceverifykit/c/a;->a(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v4

    :try_start_1d
    invoke-virtual {p2, v4, p3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1d .. :try_end_21} :catch_94

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v6, :cond_36

    sget-object v3, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->b:Lcom/huawei/appgallery/serviceverifykit/d/d/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for ApplicationInfo is null"

    goto/16 :goto_a3

    :cond_36
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v6, :cond_84

    array-length v7, v6

    if-gtz v7, :cond_3e

    goto :goto_84

    :cond_3e
    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    array-length v7, v6

    if-nez v7, :cond_58

    sget-object v3, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->b:Lcom/huawei/appgallery/serviceverifykit/d/d/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for sign is empty"

    goto :goto_a3

    :cond_58
    :try_start_58
    const-string v7, "SHA-256"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6
    :try_end_62
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_58 .. :try_end_62} :catch_74

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/huawei/appgallery/serviceverifykit/d/b;->b([BZ)Ljava/lang/String;

    move-result-object v6

    iget v3, v3, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-direct {p0, v5, v6, v4, v3}, Lcom/huawei/appgallery/serviceverifykit/c/a;->a(Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;I)Lcom/huawei/appgallery/serviceverifykit/a/a;

    move-result-object v3

    if-nez v3, :cond_70

    goto :goto_d

    :cond_70
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :catch_74
    sget-object v3, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->b:Lcom/huawei/appgallery/serviceverifykit/d/d/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for AlgorithmException"

    goto :goto_a3

    :cond_84
    :goto_84
    sget-object v3, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->b:Lcom/huawei/appgallery/serviceverifykit/d/d/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for no sign"

    goto :goto_a3

    :catch_94
    sget-object v3, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->b:Lcom/huawei/appgallery/serviceverifykit/d/d/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for PackageInfo is null"

    :goto_a3
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_af
    return-object v2
.end method

.method private a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "MatchAppFinder"

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_44

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->d:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Lcom/huawei/appgallery/serviceverifykit/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_42

    sget-object p1, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->b:Lcom/huawei/appgallery/serviceverifykit/d/d/b;

    const-string p2, "checkSinger failed"

    :goto_3e
    invoke-virtual {p1, v2, p2}, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_42
    const/4 p1, 0x1

    return p1

    :cond_44
    :goto_44
    sget-object p1, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->b:Lcom/huawei/appgallery/serviceverifykit/d/d/b;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "skip package "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for no signer or no certChain"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_3e
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    if-eqz p1, :cond_24

    array-length v0, p1

    move v2, v1

    :goto_15
    if-ge v2, v0, :cond_24

    aget-object v3, p1, v2

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 p1, 0x1

    return p1

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_24
    return v1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "MatchAppFinder"

    if-nez v0, :cond_74

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_74

    :cond_10
    invoke-static {p3}, Lcom/huawei/appgallery/serviceverifykit/d/c;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_22

    sget-object p1, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->b:Lcom/huawei/appgallery/serviceverifykit/d/d/b;

    const-string p2, "certChain is empty"

    :goto_1e
    invoke-virtual {p1, v2, p2}, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_22
    iget-object v0, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/appgallery/serviceverifykit/d/c;->a(Landroid/content/Context;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/huawei/appgallery/serviceverifykit/d/c;->a(Ljava/security/cert/X509Certificate;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_33

    sget-object p1, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->b:Lcom/huawei/appgallery/serviceverifykit/d/d/b;

    const-string p2, "failed to verify cert chain"

    goto :goto_1e

    :cond_33
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/security/cert/X509Certificate;

    iget-object v0, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->b:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/huawei/appgallery/serviceverifykit/d/c;->a(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_46

    sget-object p1, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->b:Lcom/huawei/appgallery/serviceverifykit/d/d/b;

    const-string p2, "CN is invalid"

    goto :goto_1e

    :cond_46
    iget-object v0, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->c:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/huawei/appgallery/serviceverifykit/d/c;->b(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_53

    sget-object p1, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->b:Lcom/huawei/appgallery/serviceverifykit/d/d/b;

    const-string p2, "OU is invalid"

    goto :goto_1e

    :cond_53
    const/4 v0, 0x0

    :try_start_54
    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_5a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_54 .. :try_end_5a} :catch_5b

    goto :goto_63

    :catch_5b
    move-exception p1

    sget-object v3, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->b:Lcom/huawei/appgallery/serviceverifykit/d/d/b;

    const-string v4, "checkCertChain UnsupportedEncodingException:"

    invoke-virtual {v3, v2, v4, p1}, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_63
    invoke-static {p2}, Lcom/huawei/appgallery/serviceverifykit/d/a;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p3, v0, p1}, Lcom/huawei/appgallery/serviceverifykit/d/c;->a(Ljava/security/cert/X509Certificate;[B[B)Z

    move-result p1

    if-nez p1, :cond_72

    sget-object p1, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->b:Lcom/huawei/appgallery/serviceverifykit/d/d/b;

    const-string p2, "signature is invalid"

    goto :goto_1e

    :cond_72
    const/4 p1, 0x1

    return p1

    :cond_74
    :goto_74
    sget-object p1, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->b:Lcom/huawei/appgallery/serviceverifykit/d/d/b;

    const-string p2, "args is invalid"

    goto :goto_1e
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/huawei/appgallery/serviceverifykit/a/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->t:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/appgallery/serviceverifykit/c/a;->a(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_12

    const/4 v0, 0x0

    return-object v0

    :cond_12
    iget-object v2, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->m:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    goto :goto_23

    :cond_1d
    iget-object v2, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->m:Ljava/lang/String;

    invoke-static {v2}, Lcom/huawei/appgallery/serviceverifykit/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_23
    iput-object v2, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->u:Ljava/lang/String;

    iget v2, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->h:I

    or-int/lit16 v2, v2, 0x80

    or-int/lit8 v2, v2, 0x40

    invoke-direct {p0, v1, v0, v2}, Lcom/huawei/appgallery/serviceverifykit/c/a;->a(Ljava/util/List;Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ILjava/util/List;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Lcom/huawei/appgallery/serviceverifykit/api/ServiceVerifyKit$Builder$ComponentType;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/huawei/appgallery/serviceverifykit/api/ServiceVerifyKit$b;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Lcom/huawei/appgallery/serviceverifykit/api/ServiceVerifyKit$Builder$ComponentType;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->f:Ljava/util/Map;

    iput-object p7, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->g:Ljava/util/Map;

    iput p8, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->h:I

    iput-object p9, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->i:Ljava/util/List;

    iput-object p10, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->j:Ljava/util/List;

    iput p11, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->k:I

    iput-object p12, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->l:Ljava/lang/String;

    iput-object p13, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->m:Ljava/lang/String;

    iput-object p14, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->n:Landroid/content/Intent;

    iput-object p15, p0, Lcom/huawei/appgallery/serviceverifykit/c/a;->o:Lcom/huawei/appgallery/serviceverifykit/api/ServiceVerifyKit$Builder$ComponentType;

    return-void
.end method
