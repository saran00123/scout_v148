.class public Lcom/huawei/hms/hatool/u;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hms/hatool/q;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/huawei/hms/hatool/q;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/hatool/u;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/hms/hatool/u;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/huawei/hms/hatool/u;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/huawei/hms/hatool/u;->d:Ljava/util/List;

    iput-object p5, p0, Lcom/huawei/hms/hatool/u;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-static {p1, p2}, Lcom/huawei/hms/hatool/c;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_1d

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "hmsSdk"

    const-string p2, "No report address,TAG : %s,TYPE: %s "

    invoke-static {p1, p2, v0}, Lcom/huawei/hms/hatool/y;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_1d
    const-string p1, "oper"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "{url}"

    if-eqz p1, :cond_2e

    const-string p1, "{url}/common/hmshioperqrt"

    :goto_29
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_44

    :cond_2e
    const-string p1, "maint"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    const-string p1, "{url}/common/hmshimaintqrt"

    goto :goto_29

    :cond_39
    const-string p1, "diffprivacy"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_44

    const-string p1, "{url}/common/common2"

    goto :goto_29

    :cond_44
    :goto_44
    return-object v2
.end method

.method public a()V
    .registers 10

    iget-object v0, p0, Lcom/huawei/hms/hatool/u;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/huawei/hms/hatool/u;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/huawei/hms/hatool/u;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "hmsSdk"

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/huawei/hms/hatool/u;->b:Ljava/lang/String;

    const-string v2, "preins"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "collectUrl is empty"

    :goto_1c
    invoke-static {v1, v0}, Lcom/huawei/hms/hatool/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_20
    iget-object v0, p0, Lcom/huawei/hms/hatool/u;->a:Ljava/lang/String;

    const-string v2, "_hms_config_tag"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/huawei/hms/hatool/u;->a:Ljava/lang/String;

    const-string v2, "_openness_config_tag"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    invoke-virtual {p0}, Lcom/huawei/hms/hatool/u;->b()V

    :cond_37
    invoke-virtual {p0}, Lcom/huawei/hms/hatool/u;->d()Lcom/huawei/hms/hatool/r;

    move-result-object v0

    if-eqz v0, :cond_5a

    invoke-virtual {p0, v0}, Lcom/huawei/hms/hatool/u;->a(Lcom/huawei/hms/hatool/r;)[B

    move-result-object v3

    array-length v0, v3

    if-nez v0, :cond_47

    const-string v0, "request body is empty"

    goto :goto_1c

    :cond_47
    new-instance v0, Lcom/huawei/hms/hatool/i0;

    iget-object v5, p0, Lcom/huawei/hms/hatool/u;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/huawei/hms/hatool/u;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/huawei/hms/hatool/u;->e:Ljava/lang/String;

    iget-object v8, p0, Lcom/huawei/hms/hatool/u;->d:Ljava/util/List;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/huawei/hms/hatool/i0;-><init>([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {}, Lcom/huawei/hms/hatool/n0;->a()Lcom/huawei/hms/hatool/n0;

    move-result-object v1

    goto :goto_6b

    :cond_5a
    new-instance v0, Lcom/huawei/hms/hatool/l0;

    iget-object v1, p0, Lcom/huawei/hms/hatool/u;->d:Ljava/util/List;

    iget-object v2, p0, Lcom/huawei/hms/hatool/u;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/huawei/hms/hatool/u;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/huawei/hms/hatool/u;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/huawei/hms/hatool/l0;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hms/hatool/n0;->b()Lcom/huawei/hms/hatool/n0;

    move-result-object v1

    :goto_6b
    invoke-virtual {v1, v0}, Lcom/huawei/hms/hatool/n0;->a(Lcom/huawei/hms/hatool/m0;)V

    return-void
.end method

.method public final a(Lcom/huawei/hms/hatool/r;)[B
    .registers 5

    const-string v0, "hmsSdk"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p1}, Lcom/huawei/hms/hatool/r;->a()Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_11

    const-string p1, "uploadEvents is null"

    invoke-static {v0, p1}, Lcom/huawei/hms/hatool/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v1, [B

    return-object p1

    :cond_11
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hms/hatool/r0;->a([B)[B

    move-result-object p1
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_1f} :catch_23
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_1f} :catch_20

    return-object p1

    :catch_20
    const-string p1, "sendData(): getBytes - Unsupported coding format!!"

    goto :goto_25

    :catch_23
    const-string p1, "uploadEvents to json error"

    :goto_25
    invoke-static {v0, p1}, Lcom/huawei/hms/hatool/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v1, [B

    return-object p1
.end method

.method public final b()V
    .registers 7

    invoke-static {}, Lcom/huawei/hms/hatool/b;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "backup_event"

    const/high16 v2, 0x500000

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/hatool/p0;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    const-string v2, "hmsSdk"

    if-eqz v0, :cond_16

    const-string v0, "backup file reach max limited size, discard new event "

    invoke-static {v2, v0}, Lcom/huawei/hms/hatool/y;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    invoke-virtual {p0}, Lcom/huawei/hms/hatool/u;->c()Lorg/json/JSONArray;

    move-result-object v0

    iget-object v3, p0, Lcom/huawei/hms/hatool/u;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/huawei/hms/hatool/u;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/huawei/hms/hatool/u;->e:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/huawei/hms/hatool/s0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update data cached into backup,spKey: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/huawei/hms/hatool/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hms/hatool/b;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v3, v0}, Lcom/huawei/hms/hatool/g0;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c()Lorg/json/JSONArray;
    .registers 5

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/huawei/hms/hatool/u;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/hatool/q;

    :try_start_17
    invoke-virtual {v2}, Lcom/huawei/hms/hatool/q;->d()Lorg/json/JSONObject;

    move-result-object v2
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_1b} :catch_1f

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_b

    :catch_1f
    const-string v2, "hmsSdk"

    const-string v3, "handleEvents: json error,Abandon this data"

    invoke-static {v2, v3}, Lcom/huawei/hms/hatool/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_27
    return-object v0
.end method

.method public final d()Lcom/huawei/hms/hatool/r;
    .registers 6

    iget-object v0, p0, Lcom/huawei/hms/hatool/u;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/huawei/hms/hatool/u;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/huawei/hms/hatool/u;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/huawei/hms/hatool/u;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/huawei/hms/hatool/u;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/huawei/hms/hatool/b1;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hms/hatool/r;

    move-result-object v0

    return-object v0
.end method
