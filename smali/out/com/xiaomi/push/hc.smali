.class public Lcom/xiaomi/push/hc;
.super Lcom/xiaomi/push/ha;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/hc$b;,
        Lcom/xiaomi/push/hc$a;
    }
.end annotation


# instance fields
.field private a:I

.field private a:Lcom/xiaomi/push/hc$a;

.field private a:Lcom/xiaomi/push/hc$b;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/xiaomi/push/ha;-><init>(Landroid/os/Bundle;)V

    sget-object v0, Lcom/xiaomi/push/hc$b;->a:Lcom/xiaomi/push/hc$b;

    iput-object v0, p0, Lcom/xiaomi/push/hc;->a:Lcom/xiaomi/push/hc$b;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/hc;->b:Ljava/lang/String;

    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/xiaomi/push/hc;->a:I

    iput-object v0, p0, Lcom/xiaomi/push/hc;->a:Lcom/xiaomi/push/hc$a;

    const-string v0, "ext_pres_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/hc$b;->valueOf(Ljava/lang/String;)Lcom/xiaomi/push/hc$b;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/hc;->a:Lcom/xiaomi/push/hc$b;

    :cond_22
    const-string v0, "ext_pres_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/hc;->b:Ljava/lang/String;

    :cond_30
    const-string v0, "ext_pres_prio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/push/hc;->a:I

    :cond_3e
    const-string v0, "ext_pres_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/push/hc$a;->valueOf(Ljava/lang/String;)Lcom/xiaomi/push/hc$a;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/push/hc;->a:Lcom/xiaomi/push/hc$a;

    :cond_50
    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/push/hc$b;)V
    .registers 4

    invoke-direct {p0}, Lcom/xiaomi/push/ha;-><init>()V

    sget-object v0, Lcom/xiaomi/push/hc$b;->a:Lcom/xiaomi/push/hc$b;

    iput-object v0, p0, Lcom/xiaomi/push/hc;->a:Lcom/xiaomi/push/hc$b;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/hc;->b:Ljava/lang/String;

    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/xiaomi/push/hc;->a:I

    iput-object v0, p0, Lcom/xiaomi/push/hc;->a:Lcom/xiaomi/push/hc$a;

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/hc;->a(Lcom/xiaomi/push/hc$b;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .registers 4

    invoke-super {p0}, Lcom/xiaomi/push/ha;->a()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/hc;->a:Lcom/xiaomi/push/hc$b;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/xiaomi/push/hc$b;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ext_pres_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    iget-object v1, p0, Lcom/xiaomi/push/hc;->b:Ljava/lang/String;

    if-eqz v1, :cond_1a

    const-string v2, "ext_pres_status"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    iget v1, p0, Lcom/xiaomi/push/hc;->a:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_25

    const-string v2, "ext_pres_prio"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_25
    iget-object v1, p0, Lcom/xiaomi/push/hc;->a:Lcom/xiaomi/push/hc$a;

    if-eqz v1, :cond_38

    sget-object v2, Lcom/xiaomi/push/hc$a;->b:Lcom/xiaomi/push/hc$a;

    if-eq v1, v2, :cond_38

    iget-object v1, p0, Lcom/xiaomi/push/hc;->a:Lcom/xiaomi/push/hc$a;

    invoke-virtual {v1}, Lcom/xiaomi/push/hc$a;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ext_pres_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<presence"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/push/hc;->p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\""

    if-eqz v1, :cond_21

    const-string v1, " xmlns=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/push/hc;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    invoke-virtual {p0}, Lcom/xiaomi/push/hc;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_36

    const-string v1, " id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/push/hc;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_36
    invoke-virtual {p0}, Lcom/xiaomi/push/hc;->l()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4f

    const-string v1, " to=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/push/hc;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/push/hl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4f
    invoke-virtual {p0}, Lcom/xiaomi/push/hc;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_68

    const-string v1, " from=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/push/hc;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/push/hl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_68
    invoke-virtual {p0}, Lcom/xiaomi/push/hc;->k()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_81

    const-string v1, " chid=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/push/hc;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/push/hl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_81
    iget-object v1, p0, Lcom/xiaomi/push/hc;->a:Lcom/xiaomi/push/hc$b;

    if-eqz v1, :cond_92

    const-string v1, " type=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/hc;->a:Lcom/xiaomi/push/hc$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_92
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/hc;->b:Ljava/lang/String;

    if-eqz v1, :cond_ae

    const-string v1, "<status>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/hc;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/push/hl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</status>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ae
    iget v1, p0, Lcom/xiaomi/push/hc;->a:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_c3

    const-string v1, "<priority>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/push/hc;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "</priority>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c3
    iget-object v1, p0, Lcom/xiaomi/push/hc;->a:Lcom/xiaomi/push/hc$a;

    if-eqz v1, :cond_da

    sget-object v2, Lcom/xiaomi/push/hc$a;->b:Lcom/xiaomi/push/hc$a;

    if-eq v1, v2, :cond_da

    const-string v1, "<show>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/hc;->a:Lcom/xiaomi/push/hc$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "</show>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_da
    invoke-virtual {p0}, Lcom/xiaomi/push/hc;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/push/hc;->a()Lcom/xiaomi/push/he;

    move-result-object v1

    if-eqz v1, :cond_ee

    invoke-virtual {v1}, Lcom/xiaomi/push/he;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ee
    const-string v1, "</presence>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .registers 5

    const/16 v0, -0x80

    if-lt p1, v0, :cond_b

    const/16 v0, 0x80

    if-gt p1, v0, :cond_b

    iput p1, p0, Lcom/xiaomi/push/hc;->a:I

    return-void

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Priority value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not valid. Valid range is -128 through 128."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/xiaomi/push/hc$a;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/hc;->a:Lcom/xiaomi/push/hc$a;

    return-void
.end method

.method public a(Lcom/xiaomi/push/hc$b;)V
    .registers 3

    if-eqz p1, :cond_5

    iput-object p1, p0, Lcom/xiaomi/push/hc;->a:Lcom/xiaomi/push/hc$b;

    return-void

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Type cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/hc;->b:Ljava/lang/String;

    return-void
.end method
