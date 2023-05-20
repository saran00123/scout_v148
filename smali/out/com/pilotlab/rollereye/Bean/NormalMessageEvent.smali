.class public Lcom/pilotlab/rollereye/Bean/NormalMessageEvent;
.super Ljava/lang/Object;
.source "NormalMessageEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/Bean/NormalMessageEvent$Message;
    }
.end annotation


# static fields
.field public static final GENERAL_USER:I = 0x102

.field public static final VIP_USER:I = 0x101


# instance fields
.field private message:Lcom/pilotlab/rollereye/Bean/NormalMessageEvent$Message;


# direct methods
.method public constructor <init>(Lcom/pilotlab/rollereye/Bean/NormalMessageEvent$Message;)V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/NormalMessageEvent;->message:Lcom/pilotlab/rollereye/Bean/NormalMessageEvent$Message;

    return-void
.end method


# virtual methods
.method public getMessage()Lcom/pilotlab/rollereye/Bean/NormalMessageEvent$Message;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/NormalMessageEvent;->message:Lcom/pilotlab/rollereye/Bean/NormalMessageEvent$Message;

    return-object v0
.end method

.method public setMessage(Lcom/pilotlab/rollereye/Bean/NormalMessageEvent$Message;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/NormalMessageEvent;->message:Lcom/pilotlab/rollereye/Bean/NormalMessageEvent$Message;

    return-void
.end method
