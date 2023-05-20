.class public Lcom/taobao/accs/utl/f;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final MAX_FAIL_TIMES:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .registers 6

    const-string v0, "loadSoSuccess"

    const-string v1, "LoadSoFailUtil"

    const/4 v2, 0x0

    .line 20
    :try_start_5
    invoke-static {}, Lcom/taobao/accs/utl/f;->c()I

    move-result v3

    if-lez v3, :cond_37

    .line 22
    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "EMAS_ACCS_LOAD_SO"

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 23
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 24
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v4, 0x2

    .line 25
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "fail times"

    aput-object v5, v4, v2

    const/4 v5, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v5

    invoke-static {v1, v0, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_30} :catch_31

    goto :goto_37

    :catch_31
    move-exception v3

    .line 28
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_37
    :goto_37
    return-void
.end method

.method public static b()V
    .registers 7

    const-string v0, "load_so_times"

    const-string v1, "loadSoFail"

    const-string v2, "LoadSoFailUtil"

    const/4 v3, 0x0

    .line 34
    :try_start_7
    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "EMAS_ACCS_LOAD_SO"

    .line 36
    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 37
    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    if-lez v5, :cond_23

    .line 40
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 41
    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 42
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_23
    const/4 v0, 0x2

    .line 44
    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "times"

    aput-object v4, v0, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v6

    invoke-static {v2, v1, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_33} :catch_34

    goto :goto_3a

    :catch_34
    move-exception v0

    .line 46
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_3a
    return-void
.end method

.method public static c()I
    .registers 7

    const-string v0, "getSoFailTimes"

    const-string v1, "LoadSoFailUtil"

    const/4 v2, 0x0

    .line 58
    :try_start_5
    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "EMAS_ACCS_LOAD_SO"

    .line 59
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "load_so_times"

    .line 60
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_15} :catch_29

    const/4 v4, 0x2

    .line 61
    :try_start_16
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "times"

    aput-object v5, v4, v2

    const/4 v5, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v0, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_26} :catch_27

    goto :goto_30

    :catch_27
    move-exception v4

    goto :goto_2b

    :catch_29
    move-exception v4

    move v3, v2

    .line 64
    :goto_2b
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v4, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_30
    return v3
.end method
