.class public Lcom/huawei/hms/availableupdate/b;
.super Ljava/lang/Object;
.source "DownloadRecord.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 14
    iget v0, p0, Lcom/huawei/hms/availableupdate/b;->d:I

    return v0
.end method

.method public a(Landroid/content/Context;ILjava/lang/String;)V
    .registers 4

    .line 11
    iput p2, p0, Lcom/huawei/hms/availableupdate/b;->d:I

    .line 13
    invoke-virtual {p0, p1, p3}, Lcom/huawei/hms/availableupdate/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.huawei.hms.update.DOWNLOAD_RECORD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, ""

    const-string v1, "mUri"

    .line 3
    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/hms/availableupdate/b;->a:Ljava/lang/String;

    const-string v1, "mSize"

    .line 4
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/huawei/hms/availableupdate/b;->b:I

    const-string v1, "mHash"

    .line 5
    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/huawei/hms/availableupdate/b;->c:Ljava/lang/String;

    const-string p2, "mReceived"

    .line 6
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/huawei/hms/availableupdate/b;->d:I

    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 7
    iput-object p1, p0, Lcom/huawei/hms/availableupdate/b;->a:Ljava/lang/String;

    .line 8
    iput p2, p0, Lcom/huawei/hms/availableupdate/b;->b:I

    .line 9
    iput-object p3, p0, Lcom/huawei/hms/availableupdate/b;->c:Ljava/lang/String;

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/huawei/hms/availableupdate/b;->d:I

    return-void
.end method

.method public b()I
    .registers 2

    .line 11
    iget v0, p0, Lcom/huawei/hms/availableupdate/b;->b:I

    return v0
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.huawei.hms.update.DOWNLOAD_RECORD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/huawei/hms/availableupdate/b;->a:Ljava/lang/String;

    const-string v0, "mUri"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6
    iget p2, p0, Lcom/huawei/hms/availableupdate/b;->b:I

    const-string v0, "mSize"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 7
    iget-object p2, p0, Lcom/huawei/hms/availableupdate/b;->c:Ljava/lang/String;

    const-string v0, "mHash"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8
    iget p2, p0, Lcom/huawei/hms/availableupdate/b;->d:I

    const-string v0, "mReceived"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 10
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public b(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 5

    if-eqz p1, :cond_24

    if-eqz p3, :cond_24

    .line 12
    iget-object v0, p0, Lcom/huawei/hms/availableupdate/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    iget p1, p0, Lcom/huawei/hms/availableupdate/b;->b:I

    if-ne p1, p2, :cond_24

    iget-object p1, p0, Lcom/huawei/hms/availableupdate/b;->c:Ljava/lang/String;

    if-eqz p1, :cond_24

    .line 18
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    iget p1, p0, Lcom/huawei/hms/availableupdate/b;->d:I

    iget p2, p0, Lcom/huawei/hms/availableupdate/b;->b:I

    if-gt p1, p2, :cond_24

    const/4 p1, 0x1

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    return p1
.end method
