.class public Lcom/pilotlab/rollereye/Bean/ServerBean/ProductsBean$DataBean;
.super Ljava/lang/Object;
.source "ProductsBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/ServerBean/ProductsBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field private duration:I

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private price:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/ProductsBean$DataBean;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .registers 2

    .line 95
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/ProductsBean$DataBean;->duration:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/ProductsBean$DataBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/ProductsBean$DataBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()I
    .registers 2

    .line 63
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/ProductsBean$DataBean;->price:I

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/ProductsBean$DataBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setDuration(I)V
    .registers 2

    .line 99
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/ProductsBean$DataBean;->duration:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/ProductsBean$DataBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/ProductsBean$DataBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setPrice(I)V
    .registers 2

    .line 67
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/ProductsBean$DataBean;->price:I

    return-void
.end method
