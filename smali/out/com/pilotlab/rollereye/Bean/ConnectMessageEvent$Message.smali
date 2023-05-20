.class public Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;
.super Ljava/lang/Object;
.source "ConnectMessageEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Message"
.end annotation


# instance fields
.field private body:Ljava/lang/String;

.field private tag:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->tag:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->tag:I

    .line 42
    iput-object p2, p0, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->body:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .line 58
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->tag:I

    return v0
.end method

.method public setBody(Ljava/lang/String;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->body:Ljava/lang/String;

    return-void
.end method

.method public setTag(I)V
    .registers 2

    .line 62
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->tag:I

    return-void
.end method
