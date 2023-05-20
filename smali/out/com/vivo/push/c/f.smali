.class public final Lcom/vivo/push/c/f;
.super Lcom/vivo/push/c/o;
.source "OnClearCacheReceiveTask.java"


# direct methods
.method public constructor <init>(Lcom/vivo/push/g;)V
    .registers 2

    .line 13
    invoke-direct {p0, p1}, Lcom/vivo/push/c/o;-><init>(Lcom/vivo/push/g;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/vivo/push/g;)V
    .registers 3

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "delete push info "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/push/c/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnClearCacheTask"

    invoke-static {v0, p1}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object p1, p0, Lcom/vivo/push/c/f;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/vivo/push/util/x;->b(Landroid/content/Context;)Lcom/vivo/push/util/x;

    move-result-object p1

    .line 1038
    new-instance v0, Lcom/vivo/push/util/w;

    invoke-direct {v0}, Lcom/vivo/push/util/w;-><init>()V

    .line 1039
    iget-object p1, p1, Lcom/vivo/push/util/x;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Lcom/vivo/push/util/w;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 1077
    iget-object p1, v0, Lcom/vivo/push/util/w;->b:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-eqz p1, :cond_3a

    .line 1079
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 1080
    invoke-static {p1}, Lcom/vivo/push/util/a;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1082
    :cond_3a
    sget-object p1, Lcom/vivo/push/util/w;->a:Ljava/lang/String;

    const-string v0, "system cache is cleared"

    invoke-static {p1, v0}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "SystemCache"

    const-string v0, "sp cache is cleared"

    .line 1044
    invoke-static {p1, v0}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    return-void
.end method
