.class public interface abstract Lcom/stripe/android/stripe3ds2/init/ui/TextBoxCustomization;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stripe/android/stripe3ds2/init/ui/Customization;


# virtual methods
.method public abstract getBorderColor()Ljava/lang/String;
.end method

.method public abstract getBorderWidth()I
.end method

.method public abstract getCornerRadius()I
.end method

.method public abstract getHintTextColor()Ljava/lang/String;
.end method

.method public abstract setBorderColor(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/stripe3ds2/exceptions/InvalidInputException;
        }
    .end annotation
.end method

.method public abstract setBorderWidth(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/stripe3ds2/exceptions/InvalidInputException;
        }
    .end annotation
.end method

.method public abstract setCornerRadius(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/stripe3ds2/exceptions/InvalidInputException;
        }
    .end annotation
.end method

.method public abstract setHintTextColor(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/stripe3ds2/exceptions/InvalidInputException;
        }
    .end annotation
.end method
