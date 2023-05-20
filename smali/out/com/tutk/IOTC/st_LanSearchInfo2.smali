.class public Lcom/tutk/IOTC/st_LanSearchInfo2;
.super Ljava/lang/Object;
.source "st_LanSearchInfo2.java"


# instance fields
.field public DeviceName:[B

.field public IP:[B

.field public UID:[B

.field public port:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/tutk/IOTC/st_LanSearchInfo2;->UID:[B

    .line 5
    iput-object v0, p0, Lcom/tutk/IOTC/st_LanSearchInfo2;->IP:[B

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/tutk/IOTC/st_LanSearchInfo2;->port:I

    .line 7
    iput-object v0, p0, Lcom/tutk/IOTC/st_LanSearchInfo2;->DeviceName:[B

    return-void
.end method
