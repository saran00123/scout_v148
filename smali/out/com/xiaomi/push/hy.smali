.class public Lcom/xiaomi/push/hy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/push/jg;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaomi/push/jg<",
        "Lcom/xiaomi/push/hy;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final a:Lcom/xiaomi/push/jo;

.field private static final a:Lcom/xiaomi/push/jw;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/push/hz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/xiaomi/push/jw;

    const-string v1, "ClientUploadData"

    invoke-direct {v0, v1}, Lcom/xiaomi/push/jw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/hy;->a:Lcom/xiaomi/push/jw;

    new-instance v0, Lcom/xiaomi/push/jo;

    const-string v1, ""

    const/16 v2, 0xf

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/hy;->a:Lcom/xiaomi/push/jo;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/hy;->a:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    return v0
.end method

.method public a(Lcom/xiaomi/push/hy;)I
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_23
    invoke-virtual {p0}, Lcom/xiaomi/push/hy;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/hy;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3a

    return v0

    :cond_3a
    invoke-virtual {p0}, Lcom/xiaomi/push/hy;->a()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/xiaomi/push/hy;->a:Ljava/util/List;

    iget-object p1, p1, Lcom/xiaomi/push/hy;->a:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/xiaomi/push/jh;->a(Ljava/util/List;Ljava/util/List;)I

    move-result p1

    if-eqz p1, :cond_4b

    return p1

    :cond_4b
    const/4 p1, 0x0

    return p1
.end method

.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/hy;->a:Ljava/util/List;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/xiaomi/push/js;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'uploadDataItems\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/push/hy;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/push/js;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/xiaomi/push/hz;)V
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/hy;->a:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/hy;->a:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lcom/xiaomi/push/hy;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/xiaomi/push/jr;)V
    .registers 6

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Lcom/xiaomi/push/jw;

    :goto_3
    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Lcom/xiaomi/push/jo;

    move-result-object v0

    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-nez v1, :cond_12

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->f()V

    invoke-virtual {p0}, Lcom/xiaomi/push/hy;->a()V

    return-void

    :cond_12
    iget-short v1, v0, Lcom/xiaomi/push/jo;->a:S

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1d

    :cond_17
    iget-byte v0, v0, Lcom/xiaomi/push/jo;->a:B

    invoke-static {p1, v0}, Lcom/xiaomi/push/ju;->a(Lcom/xiaomi/push/jr;B)V

    goto :goto_48

    :cond_1d
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    const/16 v2, 0xf

    if-ne v1, v2, :cond_17

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Lcom/xiaomi/push/jp;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget v2, v0, Lcom/xiaomi/push/jp;->a:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/xiaomi/push/hy;->a:Ljava/util/List;

    const/4 v1, 0x0

    :goto_31
    iget v2, v0, Lcom/xiaomi/push/jp;->a:I

    if-ge v1, v2, :cond_45

    new-instance v2, Lcom/xiaomi/push/hz;

    invoke-direct {v2}, Lcom/xiaomi/push/hz;-><init>()V

    invoke-virtual {v2, p1}, Lcom/xiaomi/push/hz;->a(Lcom/xiaomi/push/jr;)V

    iget-object v3, p0, Lcom/xiaomi/push/hy;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :cond_45
    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->i()V

    :goto_48
    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->g()V

    goto :goto_3
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/hy;->a:Ljava/util/List;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public a(Lcom/xiaomi/push/hy;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/hy;->a()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/hy;->a()Z

    move-result v2

    if-nez v1, :cond_10

    if-eqz v2, :cond_20

    :cond_10
    if-eqz v1, :cond_22

    if-nez v2, :cond_15

    goto :goto_22

    :cond_15
    iget-object v1, p0, Lcom/xiaomi/push/hy;->a:Ljava/util/List;

    iget-object p1, p1, Lcom/xiaomi/push/hy;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    return v0

    :cond_20
    const/4 p1, 0x1

    return p1

    :cond_22
    :goto_22
    return v0
.end method

.method public b(Lcom/xiaomi/push/jr;)V
    .registers 5

    invoke-virtual {p0}, Lcom/xiaomi/push/hy;->a()V

    sget-object v0, Lcom/xiaomi/push/hy;->a:Lcom/xiaomi/push/jw;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jw;)V

    iget-object v0, p0, Lcom/xiaomi/push/hy;->a:Ljava/util/List;

    if-eqz v0, :cond_3d

    sget-object v0, Lcom/xiaomi/push/hy;->a:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    new-instance v0, Lcom/xiaomi/push/jp;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/xiaomi/push/hy;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/push/jp;-><init>(BI)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jp;)V

    iget-object v0, p0, Lcom/xiaomi/push/hy;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/push/hz;

    invoke-virtual {v1, p1}, Lcom/xiaomi/push/hz;->b(Lcom/xiaomi/push/jr;)V

    goto :goto_27

    :cond_37
    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->e()V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_3d
    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->c()V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()V

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/xiaomi/push/hy;

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/hy;->a(Lcom/xiaomi/push/hy;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/xiaomi/push/hy;

    if-eqz v1, :cond_f

    check-cast p1, Lcom/xiaomi/push/hy;

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/hy;->a(Lcom/xiaomi/push/hy;)Z

    move-result p1

    return p1

    :cond_f
    return v0
.end method

.method public hashCode()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClientUploadData("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "uploadDataItems:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/hy;->a:Ljava/util/List;

    if-nez v1, :cond_16

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    :cond_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_19
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
