.class public Lcom/tutk/IOTC/St_AvIdentity;
.super Ljava/lang/Object;
.source "St_AvIdentity.java"


# instance fields
.field public identity:Ljava/lang/String;

.field public length:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/tutk/IOTC/St_AvIdentity;->identity:Ljava/lang/String;

    return-void
.end method
