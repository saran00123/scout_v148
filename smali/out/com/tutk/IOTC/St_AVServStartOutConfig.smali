.class public Lcom/tutk/IOTC/St_AVServStartOutConfig;
.super Ljava/lang/Object;
.source "St_AVServStartOutConfig.java"


# instance fields
.field public account_or_identity:[B

.field public auth_type:I

.field public resend:I

.field public two_way_streaming:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 22
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tutk/IOTC/St_AVServStartOutConfig;->account_or_identity:[B

    return-void
.end method
