// Category entity
import { Entity, PrimaryGeneratedColumn, Column, OneToMany, ManyToOne, JoinColumn, CreateDateColumn } from 'typeorm';
import { Product } from '../products/product.entity';

@Entity('categories')
export class Category {
    @PrimaryGeneratedColumn()
    id: number;

    @Column({ unique: true, length: 100 })
    slug: string;

    @Column({ length: 200 })
    name: string;

    @Column({ type: 'text', nullable: true })
    description: string;

    @Column({ default: false })
    showInMenu: boolean;

    @Column({ type: 'varchar', length: 500, nullable: true })
    thumbnail: string;

    @Column({ nullable: true })
    parentId: number;

    @ManyToOne(() => Category, (cat) => cat.children, { nullable: true, onDelete: 'SET NULL' })
    @JoinColumn({ name: 'parentId' })
    parent: Category;

    @OneToMany(() => Category, (cat) => cat.parent)
    children: Category[];

    @CreateDateColumn()
    createdAt: Date;

    @OneToMany(() => Product, (product) => product.category)
    products: Product[];
}
