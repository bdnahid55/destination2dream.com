<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('payments', function (Blueprint $table) {
            $table->id();
            $table->integer('invoice_id')->nullable();
            $table->string('transaction_id')->nullable();
            $table->decimal('amount_paid', 8, 2)->nullable();
            $table->timestamp('payment_date')->nullable();
            $table->enum('payment_status',['success','failed', 'pending'])->default('success');
            $table->string('payment_method')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('payments');
    }
};
