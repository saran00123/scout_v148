.class public Lcom/huawei/hms/stats/c;
.super Ljava/lang/Object;
.source "HianalyticsExist.java"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static b:Z = false

.field public static c:Z = false


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/hms/stats/c;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a()Z
    .registers 6

    .line 1
    sget-object v0, Lcom/huawei/hms/stats/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_3
    sget-boolean v1, Lcom/huawei/hms/stats/c;->b:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_4a

    if-nez v1, :cond_46

    const-string v1, "com.huawei.hianalytics.process.HiAnalyticsInstance"

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 9
    :try_start_b
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_e} :catch_10
    .catchall {:try_start_b .. :try_end_e} :catchall_4a

    move v1, v3

    goto :goto_18

    :catch_10
    :try_start_10
    const-string v1, "HianalyticsExist"

    const-string v4, "In isHianalyticsExist, Failed to find class HiAnalyticsConfig."

    .line 13
    invoke-static {v1, v4}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_4a

    move v1, v2

    :goto_18
    const-string v4, "com.huawei.hms.hatool.HmsHiAnalyticsUtils"

    .line 16
    :try_start_1a
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1a .. :try_end_1d} :catch_1f
    .catchall {:try_start_1a .. :try_end_1d} :catchall_4a

    move v2, v3

    goto :goto_26

    :catch_1f
    :try_start_1f
    const-string v4, "HianalyticsExist"

    const-string v5, "In isHianalyticsExist, Failed to find class HmsHiAnalyticsUtils."

    .line 20
    invoke-static {v4, v5}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_26
    if-eqz v1, :cond_2c

    if-nez v2, :cond_2c

    .line 24
    sput-boolean v3, Lcom/huawei/hms/stats/c;->c:Z

    .line 26
    :cond_2c
    sput-boolean v3, Lcom/huawei/hms/stats/c;->b:Z
    :try_end_2e
    .catchall {:try_start_1f .. :try_end_2e} :catchall_4a

    const-string v1, "HianalyticsExist"

    .line 27
    :try_start_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hianalytics exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/huawei/hms/stats/c;->c:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_30 .. :try_end_47} :catchall_4a

    .line 30
    sget-boolean v0, Lcom/huawei/hms/stats/c;->c:Z

    return v0

    :catchall_4a
    move-exception v1

    .line 31
    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v1
.end method
