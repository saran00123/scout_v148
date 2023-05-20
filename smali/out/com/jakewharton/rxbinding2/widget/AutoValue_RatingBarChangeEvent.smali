.class final Lcom/jakewharton/rxbinding2/widget/AutoValue_RatingBarChangeEvent;
.super Lcom/jakewharton/rxbinding2/widget/RatingBarChangeEvent;
.source "AutoValue_RatingBarChangeEvent.java"


# instance fields
.field private final fromUser:Z

.field private final rating:F

.field private final view:Landroid/widget/RatingBar;


# direct methods
.method constructor <init>(Landroid/widget/RatingBar;FZ)V
    .registers 4

    .line 16
    invoke-direct {p0}, Lcom/jakewharton/rxbinding2/widget/RatingBarChangeEvent;-><init>()V

    if-eqz p1, :cond_c

    .line 20
    iput-object p1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_RatingBarChangeEvent;->view:Landroid/widget/RatingBar;

    .line 21
    iput p2, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_RatingBarChangeEvent;->rating:F

    .line 22
    iput-boolean p3, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_RatingBarChangeEvent;->fromUser:Z

    return-void

    .line 18
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null view"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 55
    :cond_4
    instance-of v1, p1, Lcom/jakewharton/rxbinding2/widget/RatingBarChangeEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_32

    .line 56
    check-cast p1, Lcom/jakewharton/rxbinding2/widget/RatingBarChangeEvent;

    .line 57
    iget-object v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_RatingBarChangeEvent;->view:Landroid/widget/RatingBar;

    invoke-virtual {p1}, Lcom/jakewharton/rxbinding2/widget/RatingBarChangeEvent;->view()Landroid/widget/RatingBar;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_RatingBarChangeEvent;->rating:F

    .line 58
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p1}, Lcom/jakewharton/rxbinding2/widget/RatingBarChangeEvent;->rating()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_30

    iget-boolean v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_RatingBarChangeEvent;->fromUser:Z

    .line 59
    invoke-virtual {p1}, Lcom/jakewharton/rxbinding2/widget/RatingBarChangeEvent;->fromUser()Z

    move-result p1

    if-ne v1, p1, :cond_30

    goto :goto_31

    :cond_30
    move v0, v2

    :goto_31
    return v0

    :cond_32
    return v2
.end method

.method public fromUser()Z
    .registers 2

    .line 38
    iget-boolean v0, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_RatingBarChangeEvent;->fromUser:Z

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 68
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_RatingBarChangeEvent;->view:Landroid/widget/RatingBar;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 70
    iget v2, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_RatingBarChangeEvent;->rating:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 72
    iget-boolean v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_RatingBarChangeEvent;->fromUser:Z

    if-eqz v1, :cond_1a

    const/16 v1, 0x4cf

    goto :goto_1c

    :cond_1a
    const/16 v1, 0x4d5

    :goto_1c
    xor-int/2addr v0, v1

    return v0
.end method

.method public rating()F
    .registers 2

    .line 33
    iget v0, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_RatingBarChangeEvent;->rating:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RatingBarChangeEvent{view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_RatingBarChangeEvent;->view:Landroid/widget/RatingBar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_RatingBarChangeEvent;->rating:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", fromUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_RatingBarChangeEvent;->fromUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public view()Landroid/widget/RatingBar;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_RatingBarChangeEvent;->view:Landroid/widget/RatingBar;

    return-object v0
.end method
