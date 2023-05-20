.class public Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;
.super Ljava/lang/Object;
.source "ConnectMessageEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;
    }
.end annotation


# static fields
.field public static final P2P_CHNAGE:I = 0x24

.field public static final P2P_CONNECT:I = 0x23

.field public static final P2P_DISCONNECT:I = 0x22

.field public static final P2P_MODE:I = 0x20

.field public static final SOCKET_CONNECT:I = 0x1

.field public static final SOCKET_CONNECTFAIL:I = 0x3

.field public static final SOCKET_DISCONNECT:I = 0x2

.field public static final WIFI_MODE:I = 0x21


# instance fields
.field private message:Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;


# direct methods
.method public constructor <init>(Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;)V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;->message:Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;

    return-void
.end method


# virtual methods
.method public getMessage()Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;->message:Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;

    return-object v0
.end method

.method public setMessage(Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;->message:Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;

    return-void
.end method
