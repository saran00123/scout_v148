.class public Lcom/pilotlab/rollereye/P2P/P2PClient$Packet;
.super Ljava/lang/Object;
.source "P2PClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/P2P/P2PClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Packet"
.end annotation


# instance fields
.field public buffer:[B

.field public length:I

.field final synthetic this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

.field public type:[I


# direct methods
.method private constructor <init>(Lcom/pilotlab/rollereye/P2P/P2PClient;)V
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$Packet;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 146
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$Packet;->type:[I

    const/16 p1, 0x1000

    .line 147
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$Packet;->buffer:[B

    const/4 p1, 0x0

    .line 148
    iput p1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$Packet;->length:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/pilotlab/rollereye/P2P/P2PClient;Lcom/pilotlab/rollereye/P2P/P2PClient$1;)V
    .registers 3

    .line 140
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/P2P/P2PClient$Packet;-><init>(Lcom/pilotlab/rollereye/P2P/P2PClient;)V

    return-void
.end method
