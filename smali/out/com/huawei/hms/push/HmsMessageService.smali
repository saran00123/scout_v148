.class public Lcom/huawei/hms/push/HmsMessageService;
.super Landroid/app/Service;
.source "HmsMessageService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/push/HmsMessageService$a;
    }
.end annotation


# static fields
.field public static final PROXY_TYPE:Ljava/lang/String; = "proxy_type"

.field public static final SUBJECT_ID:Ljava/lang/String; = "subject_id"


# instance fields
.field public final a:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/huawei/hms/push/HmsMessageService$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/huawei/hms/push/HmsMessageService$a;-><init>(Lcom/huawei/hms/push/HmsMessageService;Lcom/huawei/hms/push/a;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/huawei/hms/push/HmsMessageService;->a:Landroid/os/Messenger;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)Landroid/os/Bundle;
    .registers 5

    .line 8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "message_id"

    .line 9
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "message_body"

    .line 10
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v1, "device_token"

    .line 11
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "inputType"

    const/4 v2, -0x1

    .line 13
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2d

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2d
    return-object v0
.end method

.method public final declared-synchronized a(Landroid/content/Intent;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 9

    monitor-enter p0

    :try_start_1
    const-string v0, "device_token"

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-virtual {p0, v0, p3}, Lcom/huawei/hms/push/HmsMessageService;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/huawei/hms/aaid/utils/BaseUtils;->getCacheData(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 53
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_36

    if-eqz v2, :cond_36

    const-string v2, "HmsMessageService"

    const-string v4, "onNewToken to host app."

    .line 54
    invoke-static {v2, v4}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, v0}, Lcom/huawei/hms/push/HmsMessageService;->onNewToken(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hms/aaid/utils/BaseUtils;->deleteCacheData(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    :cond_36
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_93

    .line 58
    invoke-static {v1}, Lcom/huawei/hms/aaid/utils/BaseUtils;->getSubjectIds(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_7c

    .line 59
    array-length v2, p3

    if-nez v2, :cond_46

    goto :goto_7c

    .line 60
    :cond_46
    :goto_46
    array-length p1, p3

    if-ge v3, p1, :cond_78

    .line 61
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 62
    aget-object p2, p3, v3

    const-string v2, "subject_id"

    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewToken to sub app, subjectId:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p3, v3

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "HmsMessageService"

    invoke-static {v2, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0, v0, p1}, Lcom/huawei/hms/push/HmsMessageService;->onNewToken(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 65
    aget-object p1, p3, v3

    invoke-virtual {p0, v0, p1}, Lcom/huawei/hms/push/HmsMessageService;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 66
    :cond_78
    invoke-static {v1}, Lcom/huawei/hms/aaid/utils/BaseUtils;->clearSubjectIds(Landroid/content/Context;)V

    goto :goto_ac

    :cond_7c
    :goto_7c
    const-string p3, "HmsMessageService"

    const-string v1, "onNewToken to host app with bundle."

    .line 67
    invoke-static {p3, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "belongId"

    .line 68
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "belongId"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, v0, p2}, Lcom/huawei/hms/push/HmsMessageService;->onNewToken(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_91
    .catchall {:try_start_1 .. :try_end_91} :catchall_ae

    monitor-exit p0

    return-void

    .line 70
    :cond_93
    :try_start_93
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewToken to sub app, subjectId:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "HmsMessageService"

    invoke-static {p3, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, v0, p2}, Lcom/huawei/hms/push/HmsMessageService;->onNewToken(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_ac
    .catchall {:try_start_93 .. :try_end_ac} :catchall_ae

    :goto_ac
    monitor-exit p0

    return-void

    :catchall_ae
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 8

    .line 15
    sget-object v0, Lcom/huawei/hms/aaid/constant/ErrorEnum;->SUCCESS:Lcom/huawei/hms/aaid/constant/ErrorEnum;

    invoke-virtual {v0}, Lcom/huawei/hms/aaid/constant/ErrorEnum;->getInternalCode()I

    move-result v0

    const-string v1, "error"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "push.onNewToken"

    .line 16
    invoke-virtual {p0, v1, p2, v0}, Lcom/huawei/hms/push/HmsMessageService;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "subjectId"

    .line 17
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "message_proxy_type"

    .line 18
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doOnNewToken:transactionId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " , internalCode = "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",subjectId:"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",proxyType:"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v3, "HmsMessageService"

    invoke-static {v3, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5b

    const-string v4, "subject_id"

    .line 22
    invoke-virtual {p2, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_5b
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_66

    const-string v4, "proxy_type"

    .line 24
    invoke-virtual {p2, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_66
    sget-object v2, Lcom/huawei/hms/aaid/constant/ErrorEnum;->SUCCESS:Lcom/huawei/hms/aaid/constant/ErrorEnum;

    invoke-virtual {v2}, Lcom/huawei/hms/aaid/constant/ErrorEnum;->getInternalCode()I

    move-result v2

    if-ne v0, v2, :cond_86

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Apply token OnNewToken, subId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0, p1, p2, v1}, Lcom/huawei/hms/push/HmsMessageService;->a(Landroid/content/Intent;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_9d

    .line 28
    :cond_86
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Apply token failed, subId: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0, p2, v1, v0}, Lcom/huawei/hms/push/HmsMessageService;->a(Landroid/os/Bundle;Ljava/lang/String;I)V

    :goto_9d
    return-void
.end method

.method public final declared-synchronized a(Landroid/os/Bundle;Ljava/lang/String;I)V
    .registers 8

    monitor-enter p0

    .line 30
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/aaid/utils/BaseUtils;->getCacheData(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 32
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_32

    if-eqz v1, :cond_32

    const-string v1, "HmsMessageService"

    const-string v3, "onTokenError to host app."

    .line 33
    invoke-static {v1, v3}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance v1, Lcom/huawei/hms/push/BaseException;

    invoke-direct {v1, p3}, Lcom/huawei/hms/push/BaseException;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/huawei/hms/push/HmsMessageService;->onTokenError(Ljava/lang/Exception;)V

    .line 35
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/aaid/utils/BaseUtils;->deleteCacheData(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    :cond_32
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 37
    invoke-static {v0}, Lcom/huawei/hms/aaid/utils/BaseUtils;->getSubjectIds(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_78

    .line 38
    array-length v1, p2

    if-nez v1, :cond_42

    goto :goto_78

    .line 39
    :cond_42
    :goto_42
    array-length p1, p2

    if-ge v2, p1, :cond_74

    .line 40
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 41
    aget-object v1, p2, v2

    const-string v3, "subject_id"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTokenError to sub app, subjectId:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p2, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "HmsMessageService"

    invoke-static {v3, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v1, Lcom/huawei/hms/push/BaseException;

    invoke-direct {v1, p3}, Lcom/huawei/hms/push/BaseException;-><init>(I)V

    invoke-virtual {p0, v1, p1}, Lcom/huawei/hms/push/HmsMessageService;->onTokenError(Ljava/lang/Exception;Landroid/os/Bundle;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 44
    :cond_74
    invoke-static {v0}, Lcom/huawei/hms/aaid/utils/BaseUtils;->clearSubjectIds(Landroid/content/Context;)V

    goto :goto_a7

    :cond_78
    :goto_78
    const-string p2, "HmsMessageService"

    const-string v0, "onTokenError to host app with bundle."

    .line 45
    invoke-static {p2, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance p2, Lcom/huawei/hms/push/BaseException;

    invoke-direct {p2, p3}, Lcom/huawei/hms/push/BaseException;-><init>(I)V

    invoke-virtual {p0, p2, p1}, Lcom/huawei/hms/push/HmsMessageService;->onTokenError(Ljava/lang/Exception;Landroid/os/Bundle;)V
    :try_end_87
    .catchall {:try_start_1 .. :try_end_87} :catchall_a9

    monitor-exit p0

    return-void

    .line 47
    :cond_89
    :try_start_89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTokenError to sub app, subjectId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "HmsMessageService"

    invoke-static {v0, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance p2, Lcom/huawei/hms/push/BaseException;

    invoke-direct {p2, p3}, Lcom/huawei/hms/push/BaseException;-><init>(I)V

    invoke-virtual {p0, p2, p1}, Lcom/huawei/hms/push/HmsMessageService;->onTokenError(Ljava/lang/Exception;Landroid/os/Bundle;)V
    :try_end_a7
    .catchall {:try_start_89 .. :try_end_a7} :catchall_a9

    :goto_a7
    monitor-exit p0

    return-void

    :catchall_a9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2
    :cond_7
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {v0, p2}, Lcom/huawei/hms/aaid/utils/BaseUtils;->getLocalToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "HmsMessageService"

    const-string v2, "receive a token, refresh the local token"

    .line 5
    invoke-static {v1, v2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {v0, p2, p1}, Lcom/huawei/hms/aaid/utils/BaseUtils;->saveToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_20
    invoke-static {v0, p1}, Lcom/huawei/hms/aaid/utils/BaseUtils;->reportAaidToken(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 72
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p2, "null"

    .line 73
    :cond_8
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/huawei/hms/push/utils/PushBiUtil;->reportExit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final b(Landroid/content/Intent;)V
    .registers 9

    const-string v0, "HmsMessageService"

    const-string v1, "parse batch response."

    .line 1
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "batchMsgbody"

    .line 2
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    return-void

    .line 4
    :cond_14
    :try_start_14
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 5
    :goto_1a
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_53

    .line 6
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_24} :catch_4e

    const-string v3, "transactionId"

    .line 7
    :try_start_26
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_2a} :catch_4e

    const-string v4, "msgId"

    .line 8
    :try_start_2c
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_2c .. :try_end_30} :catch_4e

    const-string v5, "ret"

    .line 9
    :try_start_32
    sget-object v6, Lcom/huawei/hms/aaid/constant/ErrorEnum;->ERROR_UNKNOWN:Lcom/huawei/hms/aaid/constant/ErrorEnum;

    invoke-virtual {v6}, Lcom/huawei/hms/aaid/constant/ErrorEnum;->getInternalCode()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 10
    sget-object v5, Lcom/huawei/hms/aaid/constant/ErrorEnum;->SUCCESS:Lcom/huawei/hms/aaid/constant/ErrorEnum;

    invoke-virtual {v5}, Lcom/huawei/hms/aaid/constant/ErrorEnum;->getInternalCode()I

    move-result v5

    if-ne v5, v2, :cond_48

    .line 11
    invoke-virtual {p0, v3, v4}, Lcom/huawei/hms/push/HmsMessageService;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b

    .line 12
    :cond_48
    invoke-virtual {p0, v3, v4, v2}, Lcom/huawei/hms/push/HmsMessageService;->b(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_4b
    .catch Lorg/json/JSONException; {:try_start_32 .. :try_end_4b} :catch_4e

    :goto_4b
    add-int/lit8 p1, p1, 0x1

    goto :goto_1a

    :catch_4e
    const-string p1, "parse batch response failed."

    .line 13
    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_53
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMessageSent, message id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", transactionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HmsMessageService"

    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lcom/huawei/hms/aaid/constant/ErrorEnum;->SUCCESS:Lcom/huawei/hms/aaid/constant/ErrorEnum;

    invoke-virtual {v0}, Lcom/huawei/hms/aaid/constant/ErrorEnum;->getInternalCode()I

    move-result v0

    const-string v1, "push.sendMessageRet"

    invoke-virtual {p0, v1, p1, v0}, Lcom/huawei/hms/push/HmsMessageService;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 16
    invoke-virtual {p0, p2}, Lcom/huawei/hms/push/HmsMessageService;->onMessageSent(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSendError, message id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", transactionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HmsMessageService"

    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "push.sendMessageRet"

    .line 18
    invoke-virtual {p0, v0, p1, p3}, Lcom/huawei/hms/push/HmsMessageService;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 19
    new-instance p1, Lcom/huawei/hms/push/SendException;

    invoke-direct {p1, p3}, Lcom/huawei/hms/push/SendException;-><init>(I)V

    invoke-virtual {p0, p2, p1}, Lcom/huawei/hms/push/HmsMessageService;->onSendError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public doMsgReceived(Landroid/content/Intent;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/hms/push/HmsMessageService;->a(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/huawei/hms/push/RemoteMessage;

    invoke-direct {v0, p1}, Lcom/huawei/hms/push/RemoteMessage;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/huawei/hms/push/HmsMessageService;->onMessageReceived(Lcom/huawei/hms/push/RemoteMessage;)V

    return-void
.end method

.method public handleIntentMessage(Landroid/content/Intent;)V
    .registers 8

    const-string v0, "HmsMessageService"

    if-nez p1, :cond_a

    const-string p1, "receive message is null"

    .line 1
    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    const-string v1, "message_id"

    .line 2
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "message_type"

    .line 3
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "transaction_id"

    .line 4
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "new_token"

    .line 5
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    const-string v1, "onNewToken"

    .line 6
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, p1, v3}, Lcom/huawei/hms/push/HmsMessageService;->a(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_104

    :cond_2e
    const-string v4, "received_message"

    .line 8
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMessageReceived, message id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lcom/huawei/hms/aaid/constant/ErrorEnum;->SUCCESS:Lcom/huawei/hms/aaid/constant/ErrorEnum;

    invoke-virtual {v0}, Lcom/huawei/hms/aaid/constant/ErrorEnum;->getInternalCode()I

    move-result v0

    const-string v2, "push.receiveMessage"

    invoke-virtual {p0, v2, v1, v0}, Lcom/huawei/hms/push/HmsMessageService;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/huawei/hms/push/HmsMessageService;->doMsgReceived(Landroid/content/Intent;)V

    goto/16 :goto_104

    :cond_5a
    const-string v4, "sent_message"

    .line 12
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_67

    .line 13
    invoke-virtual {p0, v3, v1}, Lcom/huawei/hms/push/HmsMessageService;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_104

    :cond_67
    const-string v4, "send_error"

    .line 14
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "error"

    if-eqz v4, :cond_80

    .line 15
    sget-object v0, Lcom/huawei/hms/aaid/constant/ErrorEnum;->ERROR_UNKNOWN:Lcom/huawei/hms/aaid/constant/ErrorEnum;

    invoke-virtual {v0}, Lcom/huawei/hms/aaid/constant/ErrorEnum;->getInternalCode()I

    move-result v0

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 16
    invoke-virtual {p0, v3, v1, p1}, Lcom/huawei/hms/push/HmsMessageService;->b(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_104

    :cond_80
    const-string v4, "delivery"

    .line 17
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c4

    .line 18
    sget-object v2, Lcom/huawei/hms/aaid/constant/ErrorEnum;->ERROR_APP_SERVER_NOT_ONLINE:Lcom/huawei/hms/aaid/constant/ErrorEnum;

    .line 19
    invoke-virtual {v2}, Lcom/huawei/hms/aaid/constant/ErrorEnum;->getInternalCode()I

    move-result v2

    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMessageDelivery, message id:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", status:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", transactionId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "push.deliveryMessage"

    .line 21
    invoke-virtual {p0, v0, v3, p1}, Lcom/huawei/hms/push/HmsMessageService;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 22
    new-instance v0, Lcom/huawei/hms/push/SendException;

    invoke-direct {v0, p1}, Lcom/huawei/hms/push/SendException;-><init>(I)V

    invoke-virtual {p0, v1, v0}, Lcom/huawei/hms/push/HmsMessageService;->onMessageDelivered(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_104

    :cond_c4
    const-string v3, "server_deleted_message"

    .line 23
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e4

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete message, message id:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/huawei/hms/push/HmsMessageService;->onDeletedMessages()V

    goto :goto_104

    :cond_e4
    const-string v1, "batchSent"

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 27
    invoke-virtual {p0, p1}, Lcom/huawei/hms/push/HmsMessageService;->b(Landroid/content/Intent;)V

    goto :goto_104

    .line 28
    :cond_f0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Receive unknown message: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_104
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const-string p1, "HmsMessageService"

    const-string v0, "start to bind"

    .line 1
    invoke-static {p1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/huawei/hms/push/HmsMessageService;->a:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onDeletedMessages()V
    .registers 1

    return-void
.end method

.method public onDestroy()V
    .registers 3

    const-string v0, "HmsMessageService"

    const-string v1, "start to destroy"

    .line 1
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onMessageDelivered(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    return-void
.end method

.method public onMessageReceived(Lcom/huawei/hms/push/RemoteMessage;)V
    .registers 2

    return-void
.end method

.method public onMessageSent(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onNewToken(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onSendError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "start to command , startId = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "HmsMessageService"

    invoke-static {p3, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/huawei/hms/push/HmsMessageService;->handleIntentMessage(Landroid/content/Intent;)V

    const/4 p1, 0x2

    return p1
.end method

.method public onTokenError(Ljava/lang/Exception;)V
    .registers 2

    return-void
.end method

.method public onTokenError(Ljava/lang/Exception;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method
