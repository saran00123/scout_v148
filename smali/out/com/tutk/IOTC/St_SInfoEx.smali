.class public Lcom/tutk/IOTC/St_SInfoEx;
.super Ljava/lang/Object;
.source "St_SInfoEx.java"


# instance fields
.field public CorD:B

.field public GID:I

.field public IOTCVersion:I

.field public LocalNatType:B

.field public Mode:B

.field public NetState:I

.field public PID:I

.field public RX_count:I

.field public RelayType:B

.field public RemoteIP:[B

.field public RemoteNatType:B

.field public RemotePort:I

.field public RemoteWANIP:[B

.field public RemoteWANPort:I

.field public TX_count:I

.field public UID:[B

.field public VID:I

.field public isNebula:B

.field public isSecure:B

.field public isUseAuthkey:B

.field public size:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x15

    .line 22
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tutk/IOTC/St_SInfoEx;->UID:[B

    const/16 v0, 0x11

    .line 23
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/tutk/IOTC/St_SInfoEx;->RemoteIP:[B

    .line 38
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tutk/IOTC/St_SInfoEx;->RemoteWANIP:[B

    return-void
.end method
