.class final Lcom/android/zxing/DecodeFormats;
.super Ljava/lang/Object;
.source "DecodeFormats.java"


# static fields
.field static final DATA_MATRIX_FORMATS:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field static final ONE_D_FORMATS:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field static final PRODUCT_FORMATS:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field static final QR_CODE_FORMATS:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Lcom/android/zxing/DecodeFormats;->PRODUCT_FORMATS:Ljava/util/Vector;

    .line 13
    sget-object v0, Lcom/android/zxing/DecodeFormats;->PRODUCT_FORMATS:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object v0, Lcom/android/zxing/DecodeFormats;->PRODUCT_FORMATS:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object v0, Lcom/android/zxing/DecodeFormats;->PRODUCT_FORMATS:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object v0, Lcom/android/zxing/DecodeFormats;->PRODUCT_FORMATS:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v0, Ljava/util/Vector;

    sget-object v1, Lcom/android/zxing/DecodeFormats;->PRODUCT_FORMATS:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Lcom/android/zxing/DecodeFormats;->ONE_D_FORMATS:Ljava/util/Vector;

    .line 20
    sget-object v0, Lcom/android/zxing/DecodeFormats;->ONE_D_FORMATS:Ljava/util/Vector;

    sget-object v1, Lcom/android/zxing/DecodeFormats;->PRODUCT_FORMATS:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 21
    sget-object v0, Lcom/android/zxing/DecodeFormats;->ONE_D_FORMATS:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Lcom/android/zxing/DecodeFormats;->ONE_D_FORMATS:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v0, Lcom/android/zxing/DecodeFormats;->ONE_D_FORMATS:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v0, Lcom/android/zxing/DecodeFormats;->ONE_D_FORMATS:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Lcom/android/zxing/DecodeFormats;->QR_CODE_FORMATS:Ljava/util/Vector;

    .line 28
    sget-object v0, Lcom/android/zxing/DecodeFormats;->QR_CODE_FORMATS:Ljava/util/Vector;

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Lcom/android/zxing/DecodeFormats;->DATA_MATRIX_FORMATS:Ljava/util/Vector;

    .line 32
    sget-object v0, Lcom/android/zxing/DecodeFormats;->DATA_MATRIX_FORMATS:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method
