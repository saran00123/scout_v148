.class public Lcom/pilotlab/rollereye/Bean/ServiceMessageEvent$Message;
.super Ljava/lang/Object;
.source "ServiceMessageEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/ServiceMessageEvent;
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

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ServiceMessageEvent$Message;->tag:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ServiceMessageEvent$Message;->tag:I

    .line 33
    iput-object p2, p0, Lcom/pilotlab/rollereye/Bean/ServiceMessageEvent$Message;->body:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServiceMessageEvent$Message;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .line 49
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ServiceMessageEvent$Message;->tag:I

    return v0
.end method

.method public setBody(Ljava/lang/String;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServiceMessageEvent$Message;->body:Ljava/lang/String;

    return-void
.end method

.method public setTag(I)V
    .registers 2

    .line 53
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ServiceMessageEvent$Message;->tag:I

    return-void
.end method
