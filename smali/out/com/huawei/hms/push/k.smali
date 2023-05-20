.class public Lcom/huawei/hms/push/k;
.super Ljava/lang/Object;
.source "PushSelfShowMessage.java"


# instance fields
.field public A:Ljava/lang/String;

.field public B:I

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public F:Ljava/lang/String;

.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:I

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:I

.field public y:I

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>([B[B)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/huawei/hms/push/k;->a:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/huawei/hms/push/k;->e:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/huawei/hms/push/k;->f:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/huawei/hms/push/k;->g:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/huawei/hms/push/k;->h:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/huawei/hms/push/k;->i:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/huawei/hms/push/k;->j:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/huawei/hms/push/k;->k:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/huawei/hms/push/k;->q:Ljava/lang/String;

    .line 11
    sget-object v1, Lcom/huawei/hms/push/n;->a:Lcom/huawei/hms/push/n;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iput v1, p0, Lcom/huawei/hms/push/k;->t:I

    .line 12
    iput-object v0, p0, Lcom/huawei/hms/push/k;->u:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/huawei/hms/push/k;->v:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/huawei/hms/push/k;->w:Ljava/lang/String;

    const/4 v1, 0x0

    .line 15
    iput v1, p0, Lcom/huawei/hms/push/k;->x:I

    .line 16
    iput v1, p0, Lcom/huawei/hms/push/k;->y:I

    .line 17
    iput-object v0, p0, Lcom/huawei/hms/push/k;->A:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/huawei/hms/push/k;->C:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/huawei/hms/push/k;->E:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/huawei/hms/push/k;->F:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/huawei/hms/push/w;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Lcom/huawei/hms/push/k;->r:Ljava/lang/String;

    .line 22
    new-instance p1, Ljava/lang/String;

    sget-object v0, Lcom/huawei/hms/push/w;->a:Ljava/nio/charset/Charset;

    invoke-direct {p1, p2, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object p1, p0, Lcom/huawei/hms/push/k;->s:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/huawei/hms/push/k;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "msgContent"

    .line 2
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    iget-object p1, p0, Lcom/huawei/hms/push/k;->a:Ljava/lang/String;

    const-string v1, "group"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    iget-object p1, p0, Lcom/huawei/hms/push/k;->A:Ljava/lang/String;

    const-string v1, "tag"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    iget p1, p0, Lcom/huawei/hms/push/k;->x:I

    const-string v1, "autoCancel"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 6
    iget p1, p0, Lcom/huawei/hms/push/k;->y:I

    const-string v1, "visibility"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 7
    iget-object p1, p0, Lcom/huawei/hms/push/k;->z:Ljava/lang/String;

    const-string v1, "when"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public final a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 9
    iget-object v1, p0, Lcom/huawei/hms/push/k;->f:Ljava/lang/String;

    const-string v2, "dispPkgName"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    iget-object v1, p0, Lcom/huawei/hms/push/k;->e:Ljava/lang/String;

    const-string v2, "msgId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    iget-object v1, p0, Lcom/huawei/hms/push/k;->d:Ljava/lang/String;

    const-string v2, "ap"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    iget v1, p0, Lcom/huawei/hms/push/k;->B:I

    const-string v2, "notifyId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "psContent"

    .line 13
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "notifyDetail"

    .line 14
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    iget-object p1, p0, Lcom/huawei/hms/push/k;->D:Ljava/lang/String;

    const-string p2, "ticker"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    iget-object p1, p0, Lcom/huawei/hms/push/k;->C:Ljava/lang/String;

    const-string p2, "data"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .line 18
    iput p1, p0, Lcom/huawei/hms/push/k;->B:I

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/huawei/hms/push/k;->F:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/huawei/hms/push/k;->g:Ljava/lang/String;

    const-string v2, "cmd"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    iget-object v1, p0, Lcom/huawei/hms/push/k;->h:Ljava/lang/String;

    const-string v2, "content"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    iget-object v1, p0, Lcom/huawei/hms/push/k;->i:Ljava/lang/String;

    const-string v2, "notifyIcon"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    iget-object v1, p0, Lcom/huawei/hms/push/k;->j:Ljava/lang/String;

    const-string v2, "notifyTitle"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    iget-object v1, p0, Lcom/huawei/hms/push/k;->k:Ljava/lang/String;

    const-string v2, "notifySummary"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "param"

    .line 7
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/huawei/hms/push/k;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Lorg/json/JSONObject;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "ap"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x30

    if-nez v1, :cond_39

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_39

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v3, v1

    :goto_25
    if-ge v2, v3, :cond_2f

    const-string v1, "0"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 7
    :cond_2f
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/push/k;->d:Ljava/lang/String;

    goto :goto_3f

    .line 9
    :cond_39
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/push/k;->d:Ljava/lang/String;

    :cond_3f
    :goto_3f
    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/huawei/hms/push/k;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Lorg/json/JSONObject;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const-string v1, "acn"

    .line 1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/hms/push/k;->m:Ljava/lang/String;

    :cond_12
    const-string v1, "intentUri"

    .line 3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/hms/push/k;->c:Ljava/lang/String;

    :cond_20
    const-string v1, "appPackageName"

    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 6
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/push/k;->l:Ljava/lang/String;

    const/4 p1, 0x1

    return p1

    :cond_30
    const-string p1, "PushSelfShowLog"

    const-string v1, "appPackageName is null"

    .line 7
    invoke-static {p1, v1}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public e()I
    .registers 2

    .line 9
    iget v0, p0, Lcom/huawei/hms/push/k;->x:I

    return v0
.end method

.method public final e(Lorg/json/JSONObject;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "msgId"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 4
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/huawei/hms/push/k;->e:Ljava/lang/String;

    goto :goto_25

    .line 5
    :cond_15
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_25

    .line 6
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/push/k;->e:Ljava/lang/String;

    :cond_25
    :goto_25
    const/4 p1, 0x1

    return p1

    :cond_27
    const-string p1, "PushSelfShowLog"

    const-string v0, "msgId == null"

    .line 8
    invoke-static {p1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public f()I
    .registers 2

    .line 9
    iget v0, p0, Lcom/huawei/hms/push/k;->b:I

    return v0
.end method

.method public final f(Lorg/json/JSONObject;)Z
    .registers 5

    const-string v0, "style"

    const-string v1, "PushSelfShowLog"

    const-string v2, "enter parseNotifyParam"

    .line 1
    invoke-static {v1, v2}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "notifyDetail"

    .line 2
    :try_start_b
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/hms/push/k;->t:I
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_1b} :catch_35

    :cond_1b
    const-string v0, "bigTitle"

    .line 5
    :try_start_1d
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/push/k;->u:Ljava/lang/String;
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_23} :catch_35

    const-string v0, "bigContent"

    .line 6
    :try_start_25
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/push/k;->v:Ljava/lang/String;
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_2b} :catch_35

    const-string v0, "icon"

    .line 7
    :try_start_2d
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/push/k;->E:Ljava/lang/String;
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_33} :catch_35

    const/4 p1, 0x1

    return p1

    :catch_35
    move-exception p1

    .line 8
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/huawei/hms/push/k;->v:Ljava/lang/String;

    return-object v0
.end method

.method public final g(Lorg/json/JSONObject;)V
    .registers 5

    const-string v0, "group"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/push/k;->a:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NOTIFY_GROUP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hms/push/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PushSelfShowLog"

    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "autoCancel"

    const/4 v2, 0x1

    .line 3
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/huawei/hms/push/k;->x:I

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoCancel: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/hms/push/k;->x:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "visibility"

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/huawei/hms/push/k;->y:I

    const-string v0, "when"

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/push/k;->z:Ljava/lang/String;

    const-string v0, "tag"

    .line 7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/push/k;->A:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/huawei/hms/push/k;->u:Ljava/lang/String;

    return-object v0
.end method

.method public final h(Lorg/json/JSONObject;)Z
    .registers 5

    const-string v0, "autoClear"

    const-string v1, "param"

    const/4 v2, 0x0

    .line 1
    :try_start_5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/hms/push/k;->b:I

    goto :goto_18

    .line 4
    :cond_16
    iput v2, p0, Lcom/huawei/hms/push/k;->b:I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_18} :catch_4e

    :goto_18
    const-string v0, "app"

    .line 5
    :try_start_1a
    iget-object v1, p0, Lcom/huawei/hms/push/k;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_20} :catch_4e

    if-nez v0, :cond_49

    const-string v0, "cosa"

    :try_start_24
    iget-object v1, p0, Lcom/huawei/hms/push/k;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2a} :catch_4e

    if-eqz v0, :cond_2d

    goto :goto_49

    :cond_2d
    const-string v0, "url"

    .line 6
    :try_start_2f
    iget-object v1, p0, Lcom/huawei/hms/push/k;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 7
    invoke-virtual {p0, p1}, Lcom/huawei/hms/push/k;->k(Lorg/json/JSONObject;)Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3a} :catch_4e

    goto :goto_4c

    :cond_3b
    const-string v0, "rp"

    .line 8
    :try_start_3d
    iget-object v1, p0, Lcom/huawei/hms/push/k;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 9
    invoke-virtual {p0, p1}, Lcom/huawei/hms/push/k;->j(Lorg/json/JSONObject;)Z

    goto :goto_4c

    .line 10
    :cond_49
    :goto_49
    invoke-virtual {p0, p1}, Lcom/huawei/hms/push/k;->d(Lorg/json/JSONObject;)Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_4c} :catch_4e

    :cond_4c
    :goto_4c
    const/4 p1, 0x1

    return p1

    :catch_4e
    move-exception p1

    const-string v0, "PushSelfShowLog"

    const-string v1, "ParseParam error "

    .line 11
    invoke-static {v0, v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/huawei/hms/push/k;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final i(Lorg/json/JSONObject;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "psContent"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_59

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "cmd"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/push/k;->g:Ljava/lang/String;

    const-string v0, "content"

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/push/k;->h:Ljava/lang/String;

    const-string v0, "notifyIcon"

    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/push/k;->i:Ljava/lang/String;

    const-string v0, "notifyTitle"

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/push/k;->j:Ljava/lang/String;

    const-string v0, "notifySummary"

    .line 7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/push/k;->k:Ljava/lang/String;

    const-string v0, "ticker"

    .line 8
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/push/k;->D:Ljava/lang/String;

    const-string v0, "notifyDetail"

    .line 9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 10
    invoke-virtual {p0, p1}, Lcom/huawei/hms/push/k;->f(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_4c

    return v2

    :cond_4c
    const-string v0, "param"

    .line 11
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 12
    invoke-virtual {p0, p1}, Lcom/huawei/hms/push/k;->h(Lorg/json/JSONObject;)Z

    move-result p1

    return p1

    :cond_59
    return v2
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/huawei/hms/push/k;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final j(Lorg/json/JSONObject;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const-string v1, "appPackageName"

    .line 1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/hms/push/k;->l:Ljava/lang/String;

    :cond_12
    const-string v1, "rpt"

    .line 3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    const-string v2, "rpl"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 4
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/push/k;->o:Ljava/lang/String;

    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/push/k;->p:Ljava/lang/String;

    const-string v0, "rpct"

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/push/k;->q:Ljava/lang/String;

    :cond_3c
    const/4 p1, 0x1

    return p1

    :cond_3e
    const-string p1, "PushSelfShowLog"

    const-string v1, "rpl or rpt is null"

    .line 8
    invoke-static {p1, v1}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/huawei/hms/push/k;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final k(Lorg/json/JSONObject;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const-string v1, "url"

    .line 1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/push/k;->n:Ljava/lang/String;

    const-string v0, "appPackageName"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/push/k;->l:Ljava/lang/String;

    :cond_20
    const-string v0, "rpt"

    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a

    const-string v1, "rpl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 6
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/hms/push/k;->o:Ljava/lang/String;

    .line 7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/push/k;->p:Ljava/lang/String;

    const-string v0, "rpct"

    .line 8
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/push/k;->q:Ljava/lang/String;

    :cond_4a
    const/4 p1, 0x1

    return p1

    :cond_4c
    const-string p1, "PushSelfShowLog"

    const-string v1, "url is null"

    .line 10
    invoke-static {p1, v1}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/push/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/push/k;->E:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/push/k;->c:Ljava/lang/String;

    return-object v0
.end method

.method public o()[B
    .registers 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/hms/push/k;->v()Lorg/json/JSONObject;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/huawei/hms/push/k;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hms/push/k;->r()Lorg/json/JSONObject;

    move-result-object v1

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/huawei/hms/push/k;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/huawei/hms/push/k;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    sget-object v1, Lcom/huawei/hms/push/w;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object v0

    :catch_1f
    move-exception v0

    const-string v1, "PushSelfShowLog"

    const-string v2, "getMsgData failed JSONException:"

    .line 8
    invoke-static {v1, v2, v0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 9
    new-array v0, v0, [B

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msgId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hms/push/k;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PushSelfShowLog"

    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/push/k;->e:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/push/k;->A:Ljava/lang/String;

    return-object v0
.end method

.method public final r()Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget v1, p0, Lcom/huawei/hms/push/k;->t:I

    const-string v2, "style"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3
    iget-object v1, p0, Lcom/huawei/hms/push/k;->u:Ljava/lang/String;

    const-string v2, "bigTitle"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    iget-object v1, p0, Lcom/huawei/hms/push/k;->v:Ljava/lang/String;

    const-string v2, "bigContent"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    iget-object v1, p0, Lcom/huawei/hms/push/k;->w:Ljava/lang/String;

    const-string v2, "bigPic"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public s()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/huawei/hms/push/k;->B:I

    return v0
.end method

.method public t()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/push/k;->k:Ljava/lang/String;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/push/k;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final v()Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget v1, p0, Lcom/huawei/hms/push/k;->b:I

    const-string v2, "autoClear"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3
    iget-object v1, p0, Lcom/huawei/hms/push/k;->n:Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    iget-object v1, p0, Lcom/huawei/hms/push/k;->o:Ljava/lang/String;

    const-string v2, "rpl"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    iget-object v1, p0, Lcom/huawei/hms/push/k;->p:Ljava/lang/String;

    const-string v2, "rpt"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    iget-object v1, p0, Lcom/huawei/hms/push/k;->q:Ljava/lang/String;

    const-string v2, "rpct"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    iget-object v1, p0, Lcom/huawei/hms/push/k;->l:Ljava/lang/String;

    const-string v2, "appPackageName"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    iget-object v1, p0, Lcom/huawei/hms/push/k;->m:Ljava/lang/String;

    const-string v2, "acn"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    iget-object v1, p0, Lcom/huawei/hms/push/k;->c:Ljava/lang/String;

    const-string v2, "intentUri"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public w()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/huawei/hms/push/k;->t:I

    return v0
.end method

.method public x()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/push/k;->D:Ljava/lang/String;

    return-object v0
.end method

.method public y()[B
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/push/k;->s:Ljava/lang/String;

    sget-object v1, Lcom/huawei/hms/push/w;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public z()Z
    .registers 6

    const-string v0, "PushSelfShowLog"

    const/4 v1, 0x0

    .line 1
    :try_start_3
    iget-object v2, p0, Lcom/huawei/hms/push/k;->r:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_9} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_51

    if-eqz v2, :cond_11

    const-string v2, "msg is null"

    .line 2
    :try_start_d
    invoke-static {v0, v2}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 3
    :cond_11
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/huawei/hms/push/k;->r:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v2}, Lcom/huawei/hms/push/k;->g(Lorg/json/JSONObject;)V
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_1b} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1b} :catch_51

    const-string v3, "msgContent"

    .line 5
    :try_start_1d
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 6
    invoke-virtual {p0, v2}, Lcom/huawei/hms/push/k;->e(Lorg/json/JSONObject;)Z

    move-result v3
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_25} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_25} :catch_51

    if-nez v3, :cond_28

    return v1

    :cond_28
    const-string v3, "dispPkgName"

    .line 7
    :try_start_2a
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/huawei/hms/push/k;->f:Ljava/lang/String;

    .line 8
    invoke-virtual {p0, v2}, Lcom/huawei/hms/push/k;->c(Lorg/json/JSONObject;)V
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_2a .. :try_end_33} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_33} :catch_51

    const-string v3, "notifyId"

    const/4 v4, -0x1

    .line 9
    :try_start_36
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/huawei/hms/push/k;->B:I
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_36 .. :try_end_3c} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3c} :catch_51

    const-string v3, "data"

    .line 10
    :try_start_3e
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/huawei/hms/push/k;->C:Ljava/lang/String;
    :try_end_44
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_44} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_44} :catch_51

    const-string v3, "analyticInfo"

    .line 11
    :try_start_46
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/huawei/hms/push/k;->F:Ljava/lang/String;

    .line 12
    invoke-virtual {p0, v2}, Lcom/huawei/hms/push/k;->i(Lorg/json/JSONObject;)Z

    move-result v0
    :try_end_50
    .catch Lorg/json/JSONException; {:try_start_46 .. :try_end_50} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_50} :catch_51

    return v0

    :catch_51
    move-exception v2

    .line 13
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catch_5a
    const-string v2, "parse message exception."

    .line 14
    invoke-static {v0, v2}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
