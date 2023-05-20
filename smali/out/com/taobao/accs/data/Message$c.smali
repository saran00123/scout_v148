.class public Lcom/taobao/accs/data/Message$c;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/data/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final CONTROL:I = 0x0

.field public static final DATA:I = 0x1

.field public static final HANDSHAKE:I = 0x3

.field public static final INVALID:I = -0x1

.field public static final PING:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_e

    const/4 v1, 0x1

    if-eq p0, v1, :cond_d

    const/4 v1, 0x2

    if-eq p0, v1, :cond_d

    const/4 v1, 0x3

    if-eq p0, v1, :cond_d

    return v0

    :cond_d
    return v1

    :cond_e
    return v0
.end method

.method public static b(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_17

    const/4 v0, 0x1

    if-eq p0, v0, :cond_14

    const/4 v0, 0x2

    if-eq p0, v0, :cond_11

    const/4 v0, 0x3

    if-eq p0, v0, :cond_e

    const-string p0, "INVALID"

    return-object p0

    :cond_e
    const-string p0, "HANDSHAKE"

    return-object p0

    :cond_11
    const-string p0, "PING"

    return-object p0

    :cond_14
    const-string p0, "DATA"

    return-object p0

    :cond_17
    const-string p0, "CONTROL"

    return-object p0
.end method
