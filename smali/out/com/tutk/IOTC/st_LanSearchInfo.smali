.class public Lcom/tutk/IOTC/st_LanSearchInfo;
.super Ljava/lang/Object;
.source "st_LanSearchInfo.java"


# instance fields
.field public IP:[B

.field public UID:[B

.field public port:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/tutk/IOTC/st_LanSearchInfo;->UID:[B

    .line 5
    iput-object v0, p0, Lcom/tutk/IOTC/st_LanSearchInfo;->IP:[B

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/tutk/IOTC/st_LanSearchInfo;->port:I

    return-void
.end method
