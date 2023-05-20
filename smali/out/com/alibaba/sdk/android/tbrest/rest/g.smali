.class public Lcom/alibaba/sdk/android/tbrest/rest/g;
.super Ljava/lang/Object;
.source "RestSecuritySDKRequestAuthentication.java"


# instance fields
.field private a:Ljava/lang/Class;

.field private a:Ljava/lang/Object;

.field private a:Ljava/lang/reflect/Field;

.field private b:Ljava/lang/Object;

.field private b:Ljava/lang/reflect/Field;

.field private b:Ljava/lang/reflect/Method;

.field private b:Z

.field private c:Ljava/lang/reflect/Field;

.field private f:I

.field private h:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->h:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->a:Ljava/lang/Object;

    .line 39
    iput-object v0, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->b:Ljava/lang/Object;

    .line 40
    iput-object v0, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->a:Ljava/lang/Class;

    .line 41
    iput-object v0, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->a:Ljava/lang/reflect/Field;

    .line 42
    iput-object v0, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->b:Ljava/lang/reflect/Field;

    .line 43
    iput-object v0, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->c:Ljava/lang/reflect/Field;

    .line 44
    iput-object v0, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->b:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    .line 45
    iput v0, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->f:I

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->b:Z

    .line 34
    iput-object p1, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->h:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized f()V
    .registers 8

    monitor-enter p0

    .line 50
    :try_start_1
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->b:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_c1

    if-eqz v0, :cond_7

    .line 51
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_a
    const-string v3, "com.taobao.wireless.security.sdk.SecurityGuardManager"

    .line 55
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_10} :catch_3b
    .catchall {:try_start_a .. :try_end_10} :catchall_c1

    :try_start_10
    const-string v4, "getInstance"

    .line 56
    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 57
    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->mContext:Landroid/content/Context;

    aput-object v6, v5, v2

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->a:Ljava/lang/Object;

    const-string v4, "getSecureSignatureComp"

    .line 59
    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 60
    iget-object v5, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->a:Ljava/lang/Object;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->b:Ljava/lang/Object;
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_3a} :catch_3c
    .catchall {:try_start_10 .. :try_end_3a} :catchall_c1

    goto :goto_41

    :catch_3b
    move-object v3, v0

    :catch_3c
    :try_start_3c
    const-string v4, "initSecurityCheck failure, It\'s ok "

    .line 62
    invoke-static {v4}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->i(Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_c1

    :goto_41
    if-eqz v3, :cond_bd

    :try_start_43
    const-string v4, "com.taobao.wireless.security.sdk.SecurityGuardParamContext"

    .line 66
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->a:Ljava/lang/Class;

    .line 67
    iget-object v4, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->a:Ljava/lang/Class;

    const-string v5, "appKey"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->a:Ljava/lang/reflect/Field;

    .line 68
    iget-object v4, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->a:Ljava/lang/Class;

    const-string v5, "paramMap"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->b:Ljava/lang/reflect/Field;

    .line 69
    iget-object v4, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->a:Ljava/lang/Class;

    const-string v5, "requestType"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->c:Ljava/lang/reflect/Field;
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_69} :catch_b8
    .catchall {:try_start_43 .. :try_end_69} :catchall_c1

    :try_start_69
    const-string v4, "isOpen"

    .line 74
    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_71} :catch_72
    .catchall {:try_start_69 .. :try_end_71} :catchall_c1

    goto :goto_78

    :catch_72
    :try_start_72
    const-string v3, "initSecurityCheck failure, It\'s ok"

    .line 76
    invoke-static {v3}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->i(Ljava/lang/String;)V

    move-object v3, v0

    :goto_78
    if-eqz v3, :cond_89

    .line 80
    iget-object v0, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->a:Ljava/lang/Object;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_88} :catch_b8
    .catchall {:try_start_72 .. :try_end_88} :catchall_c1

    goto :goto_9a

    :cond_89
    :try_start_89
    const-string v3, "com.taobao.wireless.security.sdk.securitybody.ISecurityBodyComponent"

    .line 85
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_89 .. :try_end_8f} :catch_90
    .catchall {:try_start_89 .. :try_end_8f} :catchall_c1

    goto :goto_95

    :catch_90
    :try_start_90
    const-string v3, "initSecurityCheck failure, It\'s ok"

    .line 87
    invoke-static {v3}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->i(Ljava/lang/String;)V

    :goto_95
    if-nez v0, :cond_99

    move v0, v1

    goto :goto_9a

    :cond_99
    move v0, v2

    :goto_9a
    if-eqz v0, :cond_9e

    move v0, v1

    goto :goto_a0

    :cond_9e
    const/16 v0, 0xc

    .line 94
    :goto_a0
    iput v0, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->f:I

    const-string v0, "com.taobao.wireless.security.sdk.securesignature.ISecureSignatureComponent"

    .line 96
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v3, "signRequest"

    .line 97
    new-array v4, v1, [Ljava/lang/Class;

    iget-object v5, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->a:Ljava/lang/Class;

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->b:Ljava/lang/reflect/Method;
    :try_end_b7
    .catch Ljava/lang/Throwable; {:try_start_90 .. :try_end_b7} :catch_b8
    .catchall {:try_start_90 .. :try_end_b7} :catchall_c1

    goto :goto_bd

    :catch_b8
    :try_start_b8
    const-string v0, "initSecurityCheck failure, It\'s ok"

    .line 100
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 102
    :cond_bd
    :goto_bd
    iput-boolean v1, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->b:Z
    :try_end_bf
    .catchall {:try_start_b8 .. :try_end_bf} :catchall_c1

    .line 103
    monitor-exit p0

    return-void

    :catchall_c1
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 113
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->b:Z

    if-nez v0, :cond_7

    .line 114
    invoke-direct {p0}, Lcom/alibaba/sdk/android/tbrest/rest/g;->f()V

    .line 117
    :cond_7
    iget-object v0, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->h:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_12

    const-string p1, "RestSecuritySDKRequestAuthentication:getSign There is no appkey,please check it!"

    .line 118
    invoke-static {p1}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    return-object v1

    :cond_12
    if-nez p1, :cond_15

    return-object v1

    .line 127
    :cond_15
    iget-object v0, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->a:Ljava/lang/Object;

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->a:Ljava/lang/Class;

    if-eqz v0, :cond_78

    iget-object v2, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->a:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_78

    iget-object v2, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->b:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_78

    iget-object v2, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->c:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_78

    iget-object v2, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->b:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_78

    iget-object v2, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->b:Ljava/lang/Object;

    if-eqz v2, :cond_78

    .line 135
    :try_start_31
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 136
    iget-object v2, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->a:Ljava/lang/reflect/Field;

    iget-object v3, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->h:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 137
    iget-object v2, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "INPUT"

    .line 138
    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object p1, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->c:Ljava/lang/reflect/Field;

    iget v2, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 142
    iget-object p1, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->b:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/alibaba/sdk/android/tbrest/rest/g;->b:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_64
    .catch Ljava/lang/InstantiationException; {:try_start_31 .. :try_end_64} :catch_74
    .catch Ljava/lang/IllegalAccessException; {:try_start_31 .. :try_end_64} :catch_6f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_31 .. :try_end_64} :catch_6a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_31 .. :try_end_64} :catch_65

    goto :goto_79

    :catch_65
    move-exception p1

    .line 155
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_78

    :catch_6a
    move-exception p1

    .line 152
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_78

    :catch_6f
    move-exception p1

    .line 149
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_78

    :catch_74
    move-exception p1

    .line 146
    invoke-virtual {p1}, Ljava/lang/InstantiationException;->printStackTrace()V

    :cond_78
    :goto_78
    move-object p1, v1

    :goto_79
    return-object p1
.end method
