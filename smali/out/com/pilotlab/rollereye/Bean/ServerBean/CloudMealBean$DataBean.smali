.class public Lcom/pilotlab/rollereye/Bean/ServerBean/CloudMealBean$DataBean;
.super Ljava/lang/Object;
.source "CloudMealBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/ServerBean/CloudMealBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private number:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudMealBean$DataBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudMealBean$DataBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()I
    .registers 2

    .line 79
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudMealBean$DataBean;->number:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudMealBean$DataBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudMealBean$DataBean;->content:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudMealBean$DataBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setNumber(I)V
    .registers 2

    .line 83
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudMealBean$DataBean;->number:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudMealBean$DataBean;->title:Ljava/lang/String;

    return-void
.end method
