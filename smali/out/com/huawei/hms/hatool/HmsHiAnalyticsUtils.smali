.class public Lcom/huawei/hms/hatool/HmsHiAnalyticsUtils;
.super Ljava/lang/Object;
.source "HmsHiAnalyticsUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableLog()V
    .registers 0

    .line 1
    invoke-static {}, Lcom/huawei/hms/hatool/l1;->a()V

    return-void
.end method

.method public static getInitFlag()Z
    .registers 1

    .line 1
    invoke-static {}, Lcom/huawei/hms/hatool/j1;->b()Z

    move-result v0

    return v0
.end method

.method public static init(Landroid/content/Context;ZZZLjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    new-instance v0, Lcom/huawei/hms/hatool/k1;

    invoke-direct {v0, p0}, Lcom/huawei/hms/hatool/k1;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/huawei/hms/hatool/k1;->a(Z)Lcom/huawei/hms/hatool/k1;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p2}, Lcom/huawei/hms/hatool/k1;->c(Z)Lcom/huawei/hms/hatool/k1;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p3}, Lcom/huawei/hms/hatool/k1;->b(Z)Lcom/huawei/hms/hatool/k1;

    move-result-object p0

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1, p4}, Lcom/huawei/hms/hatool/k1;->a(ILjava/lang/String;)Lcom/huawei/hms/hatool/k1;

    move-result-object p0

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1, p4}, Lcom/huawei/hms/hatool/k1;->a(ILjava/lang/String;)Lcom/huawei/hms/hatool/k1;

    move-result-object p0

    .line 7
    invoke-virtual {p0, p5}, Lcom/huawei/hms/hatool/k1;->a(Ljava/lang/String;)Lcom/huawei/hms/hatool/k1;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lcom/huawei/hms/hatool/k1;->a()V

    return-void
.end method

.method public static onEvent(ILjava/lang/String;Ljava/util/LinkedHashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1, p2}, Lcom/huawei/hms/hatool/j1;->a(ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/huawei/hms/hatool/j1;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onReport()V
    .registers 0

    .line 1
    invoke-static {}, Lcom/huawei/hms/hatool/j1;->c()V

    return-void
.end method
