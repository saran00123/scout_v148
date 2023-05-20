.class public Lcom/ta/a/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public a:Ljava/lang/String;

.field public b:J

.field public data:[B

.field public timestamp:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/ta/a/d/a;->a:I

    const-wide/16 v0, 0x0

    .line 14
    iput-wide v0, p0, Lcom/ta/a/d/a;->timestamp:J

    const-string v2, ""

    .line 15
    iput-object v2, p0, Lcom/ta/a/d/a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    .line 16
    iput-object v2, p0, Lcom/ta/a/d/a;->data:[B

    .line 17
    iput-wide v0, p0, Lcom/ta/a/d/a;->b:J

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 21
    :try_start_4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_52

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_52

    const/4 v3, 0x4

    .line 22
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "result"

    aput-object v4, v3, v1

    aput-object p0, v3, v2

    const-string v4, "signature"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const/4 v4, 0x3

    aput-object p1, v3, v4

    invoke-static {v0, v3}, Lcom/ta/a/e/h;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    invoke-static {p0}, Lcom/ta/a/e/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, v5}, Lcom/ta/utdid2/a/a/b;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    .line 25
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_40

    .line 26
    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "signature is ok"

    aput-object p1, p0, v1

    invoke-static {v0, p0}, Lcom/ta/a/e/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 29
    :cond_40
    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "signature is error"

    aput-object p1, p0, v1

    invoke-static {v0, p0}, Lcom/ta/a/e/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_49} :catch_4a

    goto :goto_52

    :catch_4a
    move-exception p0

    .line 33
    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v1

    invoke-static {v0, p1}, Lcom/ta/a/e/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_52
    :goto_52
    return v1
.end method
